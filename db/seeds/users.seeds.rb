User.create({
	email: "tureseanderson@gmail.com",
	password: "temp",
	password_confirmation: "temp",
	username: "turese",
	active_pet: "Harper"
})

Fablepet.create({
	unique_name: "Harper",
    name: "Hari",
    species: 0,
    pattern: 0,
    curr_element: 1,
    created_at: 30,
    updated_at: 30,
    level: 40,
    hp: 13,
    curr_hp: 12,
    attack: 7,
    defense: 16,
    magic_attack: 16,
    magic_defense: 76,
    mp: 58,
    curr_mp: 37,
    charisma: 6,
    agility: 29,
    speed: 40,
    username: "turese",
    stat_total: 400,      
    primary_color: 0,
    secondary_color: 23,
    tertiary_color: 13,
    all_elements: [0,1,2,3],
    all_colors: [0,1,3,5,6,7,13,23]
})

