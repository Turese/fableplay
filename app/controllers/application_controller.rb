class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :num_species
  helper_method :basic_species
  helper_method :basic_elements
  helper_method :basic_colors
  helper_method :get_species
  helper_method :get_element
  helper_method :get_pattern
  helper_method :create_custom_pet

  def current_user
    if session[:username]
      @current_user ||= User.find_by(username: session[:username])
    else
      @current_user = nil
    end
  end

end