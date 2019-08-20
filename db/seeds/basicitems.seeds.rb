

#item info:
#     kinds
# 0 = Color Essence
# 1 = Element Orb
# 2 = Food
# 3 = ?

capsule_blurb = "A capsule containing the essence of the color colorname. Unscrew the lid to add a new color to a Fablepet's repertoire."
orb_blurb = "A glass orb charged with elementname elemental energy. Crack it open to add a new element to a Fablepet's repertoire."


ItemProfile.create( name: 'Black Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "Black") ) 
ItemProfile.create( name: 'White Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "White") ) 
ItemProfile.create( name: 'Red Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "Red") )
ItemProfile.create( name: 'Orange Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "Orange") )
ItemProfile.create( name: 'Yellow Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "Yellow") )
ItemProfile.create( name: 'Green Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "Green") )
ItemProfile.create( name: 'Blue Essence', kind: 0, rarity: 80, flavor_text: capsule_blurb.sub("colorname", "Blue") )
ItemProfile.create( name: 'Purple Essence', kind: 0, rarity: 60, flavor_text: capsule_blurb.sub("colorname", "Purple") )
ItemProfile.create( name: 'Pink Essence', kind: 0, rarity: 60, flavor_text: capsule_blurb.sub("colorname", "Pink") )
ItemProfile.create( name: 'Gray Essence', kind: 0, rarity: 60, flavor_text: capsule_blurb.sub("colorname", "Gray") )
ItemProfile.create( name: 'Ash Essence', kind: 0, rarity: 60, flavor_text: capsule_blurb.sub("colorname", "Ash") )
ItemProfile.create( name: 'Pastel Red Essence', kind: 0, rarity: 30, flavor_text: capsule_blurb.sub("colorname", "Pastel Red") )
ItemProfile.create( name: 'Pastel Orange Essence', kind: 0, rarity: 30, flavor_text: capsule_blurb.sub("colorname", "Pastel Orange") )
ItemProfile.create( name: 'Pastel Yellow Essence', kind: 0, rarity: 30, flavor_text: capsule_blurb.sub("colorname", "Pastel Yellow") )
ItemProfile.create( name: 'Pastel Green Essence', kind: 0, rarity: 30, flavor_text: capsule_blurb.sub("colorname", "Pastel Green") )
ItemProfile.create( name: 'Pastel Blue Essence', kind: 0, rarity: 30, flavor_text: capsule_blurb.sub("colorname", "Pastel Blue") )
ItemProfile.create( name: 'Pastel Purple Essence', kind: 0, rarity: 30, flavor_text: capsule_blurb.sub("colorname", "Pastel Purple") )
ItemProfile.create( name: 'Rose Essence', kind: 0, rarity: 20, flavor_text: capsule_blurb.sub("colorname", "Rose") )
ItemProfile.create( name: 'Violet Essence', kind: 0, rarity: 20, flavor_text: capsule_blurb.sub("colorname", "Violet") )
ItemProfile.create( name: 'Indigo Essence', kind: 0, rarity: 20, flavor_text: capsule_blurb.sub("colorname", "Indigo") )
ItemProfile.create( name: 'Teal Essence', kind: 0, rarity: 20, flavor_text: capsule_blurb.sub("colorname", "Teal") )
ItemProfile.create( name: 'Mint Essence', kind: 0, rarity: 20, flavor_text: capsule_blurb.sub("colorname", "Mint") )
ItemProfile.create( name: 'Ice Essence', kind: 0, rarity: 20, flavor_text: capsule_blurb.sub("colorname", "Ice") )
ItemProfile.create( name: 'Bronze Essence', kind: 0, rarity:15, flavor_text: capsule_blurb.sub("colorname", "Bronze") )
ItemProfile.create( name: 'Silver Essence', kind: 0, rarity: 10, flavor_text: capsule_blurb.sub("colorname", "Silver") )
ItemProfile.create( name: 'Gold Essence', kind: 0, rarity: 5, flavor_text: capsule_blurb.sub("colorname", "Gold") )
ItemProfile.create( name: 'Platinum Essence', kind: 0, rarity: 1, flavor_text: capsule_blurb.sub("colorname", "Platinum") )
ItemProfile.create( name: 'Fire Orb', kind: 1, rarity: 80, flavor_text: orb_blurb.sub("elementname", "Fire") ) 
ItemProfile.create( name: 'Water Orb', kind: 1, rarity: 80, flavor_text: orb_blurb.sub("elementname", "Water") ) 
ItemProfile.create( name: 'Earth Orb', kind: 1, rarity: 80, flavor_text: orb_blurb.sub("elementname", "Earth") ) 
ItemProfile.create( name: 'Air Orb', kind: 1, rarity: 80, flavor_text: orb_blurb.sub("elementname", "Air") ) 
ItemProfile.create( name: 'Metal Orb', kind: 1, rarity: 20, flavor_text: orb_blurb.sub("elementname", "Metal") ) 
ItemProfile.create( name: 'Wood Orb', kind: 1, rarity: 20, flavor_text: orb_blurb.sub("elementname", "Wood") ) 
ItemProfile.create( name: 'Light Orb', kind: 1, rarity: 10, flavor_text: orb_blurb.sub("elementname", "Light") ) 
ItemProfile.create( name: 'Shadow Orb', kind: 1, rarity: 10, flavor_text: orb_blurb.sub("elementname", "Shadow") ) 
ItemProfile.create( name: 'Apple', kind: 2, flavor_text: "The most generic of fruits. An apple is as close to being a notionally irreducible object as it gets.")
ItemProfile.create( name: 'Orange', kind: 2, flavor_text: "A fruit named for its color, or a color named for the fruit? Not to be compared with apples.")
ItemProfile.create( name: 'Pear', kind: 2, flavor_text: "Pairs well with a fine cheese.")
ItemProfile.create( name: 'Lemon', kind: 2, flavor_text: "")
ItemProfile.create( name: 'Green Grapes', kind: 2, flavor_text: "A favorite of lounging emperors.")
ItemProfile.create( name: 'Red Grapes', kind: 2, flavor_text: "A favorite of lounging emperors.")
ItemProfile.create( name: 'Purple Grapes', kind: 2, flavor_text: "A favorite of lounging emperors.")
ItemProfile.create( name: 'Strawberry', kind: 2, flavor_text: "")