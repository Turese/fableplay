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

  def basic_elements
    [0,1,2]
  end

  def num_species
    2
  end

  def basic_species
    [0,1,2]
  end

  def basic_colors
    [0,1,2,4,8]
  end

  def get_species (species_id)
    case species_id
      when 0
        return "Werelapin"
      when 1
        return "Ferrotoad"
      when 2
        return "Mantifae"
    end
    return "Missingno."
  end

  def get_element (species_id)
    case species_id
      when 0
        return "Fire"
      when 1
        return "Water"
      when 2
        return "Earth"
    end
    return "Static"
  end


  def get_pattern (pattern_id)
    case pattern_id
      when 0
        "Basic"
    end
  end

  def get_color (color_id)
    img = MiniMagick::Image.open('public/assets/fables/colors/' + String(color_id) + '.png')
    img.resize "750x750"
    return img
  end

  public def create_custom_pet(primary_color, secondary_color, tertiary_color, pattern, species, element, user)
    basedir = 'public/assets/fables/bases/' + String(species)
    element = MiniMagick::Image.open(basedir + '/element/' + String(element) + '.png')

    lines = MiniMagick::Image.open(basedir + '/lines.png')
    primary = MiniMagick::Image.open(basedir + '/patterns/' + String(pattern) + '/primary.png')
    primary = primary.composite(get_color(primary_color), 'png') do |c|
      c.compose 'Atop'
    end

    secondary = MiniMagick::Image.open(basedir + '/patterns/' + String(pattern) + '/secondary.png')
    secondary = secondary.composite(get_color(secondary_color), 'png') do |c|
      c.compose 'Atop'
    end
      #tertiary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/tertiary.png')
      
      #img = tertiary.composite(secondary)
    img = secondary
    img = img.composite(primary)
    img = img.composite(lines)
    img = img.composite(element)

    img_string = '/assets/fables/temps/' + user + '.png'
    img.write('public' + img_string)
    return img_string
  end
    

end