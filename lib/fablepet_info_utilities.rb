def num_species
  FablepetSpecies.count
end

def num_colors
  FablepetColor.count
end

def num_elements
  Element.count
end

def num_patterns
  FablepetPattern.count
end



def basic_species
  FablepetSpecies.where(:is_basic => true).ids
end

def basic_colors
  FablepetColor.where(:is_basic => true).ids
end

def basic_elements
  Element.where(:is_basic => true).ids
end

def all_elements
  
end

def get_species_name (species_id)
  FablepetSpecies.find(species_id).read_attribute(:name)
end

def get_color_name (color_id)
  FablepetColor.find(color_id).read_attribute(:name)

end

def get_element_name (element_id)
  Element.find(element_id).read_attribute(:name)

end

def get_pattern_name (pattern_id)
  FablepetPattern.find(pattern_id).read_attribute(:name)
end