class Fablepet < ActiveRecord::Base
	self.primary_key = 'unique_name'
	belongs_to :user, foreign_key: :username


	validates :name, presence: true
	validates :unique_name, presence: true, uniqueness: true	
	validates :species, presence: true
	validates :pattern, presence: true
	validates :colors, presence: true


require 'rubygems'
require 'mini_magick'

	def image_size
		"500x500"
	end


	def basedir
		'public/assets/fables/bases/' + String(self.species)
	end

	

	def get_color (color_id)
		img = MiniMagick::Image.open('public/assets/fables/colors/' + String(color_id) + '.png')
		img.resize "750x750"
		return img
	end

	def get_species (species_id)
		case species_id
			when 0
				"Werelapin"
			when 1
				"Ferrotoad"
		end
	end


	def get_pattern (pattern_id)
		case pattern_id
			when 0
				"Basic"
		end
	end


	public def update_image 

		element = MiniMagick::Image.open(basedir + '/element/2.png')

	    lines = MiniMagick::Image.open(basedir + '/lines.png')
	    primary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/primary.png')
    	primary = primary.composite(get_color(self.colors[0]), 'png') do |c|
		  c.compose 'Atop'
		end

	    secondary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/secondary.png')
	    secondary = secondary.composite(get_color(self.colors[1]), 'png') do |c|
		  c.compose 'Atop'
		end
	    #tertiary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/tertiary.png')
	    
	    #img = tertiary.composite(secondary)
	    img = secondary
	    img = img.composite(primary)
	    img = img.composite(lines)
	    img = img.composite(element)

	    img_string = '/assets/fables/pets/' + self.unique_name + '.png'
	    img.resize image_size
	    img.write('public' + img_string)
	    return img_string
	end
end