class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :num_species
  helper_method :basic_species
  helper_method :basic_elements
  helper_method :get_species
  helper_method :get_pattern

  def current_user
    if session[:username]
      @current_user ||= User.find_by(username: session[:username])
    else
      @current_user = nil
    end
  end

  def basic_elements
    [0,1,2]
  end

  def num_species
    2
  end

  def basic_species
    [0,1]
  end

  def basic_colors
    [2,4,8]
  end

  def get_species (species_id)
    case species_id
      when 0
        "Werelapin"
      when 1
        "Ferrotoad"
    end
    "Missingno."
  end


  def get_pattern (pattern_id)
    case pattern_id
      when 0
        "Basic"
    end
  end

end