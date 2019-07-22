class FablepetsController < ApplicationController
  before_action :set_fablepet, only: [:show]

  require 'fablepet_info_utilities'


  # GET /fablepets
  # GET /fablepets.json
  def index
    set_curr_user
    @fablepets = Fablepet.where(:username => @curr_user.username)
  end

  # GET /fablepets/1
  # GET /fablepets/1.json
  def show
    @num_colors = num_colors
    @num_elements = num_elements
    @img_string = @fablepet.update_image
    @fablepet_pattern = get_pattern_name(@fablepet.pattern)
    @fablepet_species = get_species_name(@fablepet.species)
  end

  # GET /fablepets/new
  def new
    @fablepet = Fablepet.new
    @basic_colors = basic_colors
    @basic_species = basic_species
    @basic_elements = basic_elements
    if params[:selected_species] 
      @selected_species = params[:selected_species]
    else
      @selected_species = basic_species.sample
    end

    if params[:selected_element]
      @selected_element = params[:selected_element]
    else
      @selected_element = basic_elements.sample
    end

    if flash[:selected_primary]
      @selected_primary = params[:selected_primary]
    else
      @selected_primary = basic_colors.sample
    end


    if params[:selected_secondary]
      @selected_secondary = params[:selected_secondary]
    else
      @selected_secondary = basic_colors.sample
    end
  end


  # POST /fablepets
  # POST /fablepets.json
  def create
    set_curr_user
    @fablepet = Fablepet.new(fablepet_params)
    @fablepet.username = @curr_user.username
    @fablepet.species = params[:species]
    @fablepet.pattern = 0;
    @fablepet.curr_element = params[:element]
    @fablepet.primary_color = params[:primary_color]
    @fablepet.secondary_color = params[:secondary_color]
    @fablepet.update_image

    @fablepet.all_elements = [params[:element]]
    @fablepet.all_colors = [params[:primary_color], params[:secondary_color]]

    
      if @fablepet.save
        redirect_to @fablepet, notice: 'Fablepet was successfully created.' 
      else
        flash[:error] = @fablepet.errors
        flash[:name] = fablepet_params[:name]
        flash[:nickname] = fablepet_params[:unique_name]
        redirect_to :back
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
      params.require(:fablepet).permit(:name, :unique_name, :species, :pattern)
    end
end
