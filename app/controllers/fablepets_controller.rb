class FablepetsController < ApplicationController
  before_action :set_fablepet, only: [:show, :edit, :update, :destroy]

  # GET /fablepets
  # GET /fablepets.json
  def index
    set_curr_user
    @fablepets = Fablepet.where(:username => @curr_user.username)
  end

  # GET /fablepets/1
  # GET /fablepets/1.json
  def show
    @img_string = @fablepet.update_image
  end

  # GET /fablepets/new
  def new
    @fablepet = Fablepet.new
    @selected = basic_species.sample
    @curr_species = @curr_species
  end

  # GET /fablepets/1/edit
  def edit
  end

  # POST /fablepets
  # POST /fablepets.json
  def create
    set_curr_user
    @fablepet = Fablepet.new(fablepet_params)
    @fablepet.username = @curr_user.username
    respond_to do |format|
      if @fablepet.save
        format.html { redirect_to @fablepet, notice: 'Fablepet was successfully created.' }
        format.json { render :show, status: :created, location: @fablepet }
      else
        format.html { render :new }
        format.json { render json: @fablepet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fablepets/1
  # PATCH/PUT /fablepets/1.json
  def update
    respond_to do |format|
      if @fablepet.update(fablepet_params)
        format.html { redirect_to @fablepet, notice: 'Fablepet was successfully updated.' }
        format.json { render :show, status: :ok, location: @fablepet }
      else
        format.html { render :edit }
        format.json { render json: @fablepet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fablepets/1
  # DELETE /fablepets/1.json
  def destroy
    @fablepet.destroy
    respond_to do |format|
      format.html { redirect_to fablepets_url, notice: 'Fablepet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fablepet
      @fablepet = Fablepet.find(params[:unique_name])
    end

    def set_curr_user
      @curr_user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fablepet_params
      params.require(:fablepet).permit(:name, :unique_name, :species, :pattern, :colors)
    end
end
