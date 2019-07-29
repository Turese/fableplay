class FablepetsController < ApplicationController
  before_action :set_fablepet, only: [:show, :update]
  before_action :set_fablepet_edits, only: [:colors, :elements, :stats]
  before_action :set_curr_user, only: [:show, :index, :create]
  
  require 'fablepet_info_utilities'


  # GET /fablepets
  def index
    @fablepets = Fablepet.where(:username => @curr_user.username)
  end

  # GET /fablepets/:unique_name
  def show
    @num_colors = num_colors
    @num_elements = num_elements
    @img_string = @fablepet.image_url
    @fablepet_pattern = get_pattern_name(@fablepet.pattern)
    @fablepet_species = get_species_name(@fablepet.species)
    if @curr_user
      @is_owned = @curr_user.username == @fablepet.username
    else
      @is_owned = false
    end
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
  def create
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

  # PATCH/PUT /fablepets/:unique_name
  def update
    respond_to do |format|
      if @fablepet.update(fablepet_params)
        @fablepet.update_image
        format.html { redirect_to @fablepet, notice: 'Updated.' }
        format.json { render :show, status: :ok, location: @fablepet }
      else
        format.html { render :show }
        format.json { render json: @fablepet.errors, status: :unprocessable_entity }
      end
    end

  end

  # GET /fablepets/:fablepet_unique_name/colors
  def colors
    @img_string = @fablepet.image_url
    @color_list = @fablepet.all_colors
    @color_selection_list = []
    @color_list.each do |i|
      color_name = get_color_name i
      @color_selection_list.append([color_name, i])
    end
  end

  # GET /fablepets/:fablepet_unique_name/elements
  def elements
    @img_string = @fablepet.image_url
    @img_string = @fablepet.image_url
    @element_list = @fablepet.all_elements
    @element_selection_list = []
    @element_list.each do |i|
      element_name = get_element_name i
      @element_selection_list.append([element_name, i])
    end
  end

  # GET /fablepets/:fablepet_unique_name/stats
  def stats
    @img_string = @fablepet.image_url
  end


  private
    # Use callbacks to share common setup or constraints between actions.

    def set_fablepet
      @fablepet = Fablepet.find(params[:unique_name])
    end

    # GET for the editing paths because for some reason rails routes calls the name
    # param :fablepet_unique_name instead of :unique_name
    # todo: eliminate need for this??
    def set_fablepet_edits
      @fablepet = Fablepet.find(params[:fablepet_unique_name])
    end

    def set_curr_user
      @curr_user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fablepet_params
      params.require(:fablepet).permit(:name, :unique_name, :species, :pattern, :primary_color, :secondary_color, :tertiary_color, :curr_element)
    end
end
