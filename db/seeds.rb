# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FablepetSpecies.create([ 
	{ name: 'Werelapin', is_basic: true, id: 0 },
	{ name: 'Ferrotoad', is_basic: true, id: 1 }, 
	{ name: 'Mantifae', is_basic: true, id: 2 }
	])

Element.create([
	{ name: 'Fire', is_basic: true, id: 0 }, 
	{ name: 'Water', is_basic: true, id: 1 }, 
	{ name: 'Earth', is_basic: true, id: 2 },
	{ name: 'Air', is_basic: true, id: 3 },
	{ name: 'Metal', id: 4 },
	{ name: 'Wood', id: 5 },
	{ name: 'Light', id: 6 },
	{ name: 'Shadow', id: 7 }
	])

FablepetColor.create([
	{ name: 'Black', is_basic: true, id: 0 }, 
	{ name: 'White', is_basic: true, id: 1 }, 
	{ name: 'Red', is_basic: true, id: 2 },
	{ name: 'Orange', is_basic: true, id: 3 },
	{ name: 'Yellow', is_basic: true, id: 4 },
	{ name: 'Green', is_basic: true, id: 5 },
	{ name: 'Blue', is_basic: true, id: 6 },
	{ name: 'Purple', is_basic: true, id: 7 },
	{ name: 'Pink', id: 8 },
	{ name: 'Gray', id: 9 },
	{ name: 'Ash', id: 10 },
	{ name: 'Pastel Red', id: 11 },
	{ name: 'Pastel Orange', id: 12 },
	{ name: 'Pastel Yellow', id: 13 },
	{ name: 'Pastel Green', id: 14 },
	{ name: 'Pastel Blue', id: 15 },
	{ name: 'Pastel Purple', id: 16 },
	{ name: 'Rose', id: 17 },
	{ name: 'Violet', id: 18 },
	{ name: 'Indigo', id: 19 },
	{ name: 'Teal', id: 20 },
	{ name: 'Mint', id: 21 },
	{ name: 'Ice', id: 22 },
	{ name: 'Bronze', id: 23 },
	{ name: 'Silver', id: 24 },
	{ name: 'Gold', id: 25 },
	{ name: 'Platinum', id: 26 }
	])

FablepetPattern.create([ 
	{ name: 'Basic', id: 0 }
	])