class Fablepet < ActiveRecord::Base
	self.primary_key = 'unique_name'
	belongs_to :user, foreign_key: :username


	validates :name, presence: true
	validates :unique_name, presence: true, uniqueness: true	
	validates :species, presence: true
	validates :pattern, presence: true

	serialize :all_colors, Array
	serialize :all_elements, Array


	require 'rubygems'
	require 'mini_magick'
	require 'fablepet_info_utilities'

	def basedir
		'public/assets/fables/bases/' + String(self.species)
	end

	def get_color (color_id)
		img = MiniMagick::Image.open('public/assets/fables/colors/' + String(color_id) + '.png')
		img.resize "750x750"
		return img
	end

	public def create_custom_pet(primary_color, secondary_color, tertiary_color, pattern, species, element)
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
		return img
	end
	
	public def update_image 
		img = create_custom_pet(self.primary_color, self.secondary_color, self.tertiary_color, self.pattern, self.species, self.curr_element)

	    img_string = '/assets/fables/pets/' + self.unique_name + '.png'
	    img.write('public' + img_string)
	    return img_string
	end
end