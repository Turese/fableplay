class Fablepet < ActiveRecord::Base
	belongs_to :user, foreign_key: :username, primary_key: :unique_id

require 'rubygems'
require 'mini_magick'

	def store_dir
	   "images"
	end

	def basedir
		'public/images/fables/bases/' + String(self.species)
	end

	def colorguide(color_id)
		case color_id.to_i
		when 0
			return '#1f1f1f' #black
		when 1
			return '#f4ebeb' #white
		when 2
			return '#c50303' #red
		when 3
			return '#c56303' #orange
		when 4
			return '#dbbc2d' #yellow
		when 5
			return '#59c629' #lime
		when 6
			return '#29c66c' #mint
		when 7
			return '#29c6c0' #sky blue
		when 8
			return '#2955c6' #blue
		when 9
			return '#7329c6' #purple
		when 10
			return '#d330d5' #pink
		when 11
			return '#d53085' #watermelon
		when 12
			return '#7a797f' #silver
		when 13
			return '#9e7837' #gold
		end

	end

	def maxcolor
		13
	end

	def get_color (color_id)
		img = MiniMagick::Image.open('public/images/fables/colors/' + String(color_id) + '.png')
		img.resize "750x750"
		return img
	end


	public def update_image 

		element = MiniMagick::Image.open(basedir + '/element/0.png')

	    lines = MiniMagick::Image.open(basedir + '/lines.png')
	    primary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/primary.png')
    	primary = primary.composite(get_color(self.colors[0]), 'png') do |c|
		  c.compose 'Atop'
		end

	    secondary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/secondary.png')
	    secondary = secondary.composite(get_color(self.colors[1]), 'png') do |c|
		  c.compose 'Atop'
		end
	    tertiary = MiniMagick::Image.open(basedir + '/patterns/' + String(self.pattern) + '/tertiary.png')
	    
	    img = tertiary.composite(secondary)
	    img = img.composite(primary)
	    img = img.composite(lines)
	    img = img.composite(element)

	    img_string = '/images/fables/pets/' + self.unique_id + '.png'
	    img.write('public' + img_string)
	    return img_string
	end
end