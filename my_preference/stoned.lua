---------------------------Stone and Cobblestone Switch--------------------------

---defaults:
minetest.register_node(":default:stone", {
	description = "Stone",
	tiles = {"default_stone.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	drop = 'default:stone',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

-- Stone --> Cobble
minetest.register_craft({
	type = "cooking",
	output = "default:cobble",
	recipe = "default:stone",
})

---desert_uses:
-- Make desert stone drop desert stone
minetest.register_node(":default:desert_stone", {
	description = "Desert Stone",
	tiles = {"default_desert_stone.png"},
	is_ground_content = true,
	groups = {cracky=3},
	drop = 'default:desert_stone', --"desert_uses:desert_cobble",
	sounds = default.node_sound_stone_defaults(),
})

-- Desert Stone -> Desert Cobble
minetest.register_craft({
	type = "cooking",
	output = "desert_uses:desert_cobble",
	recipe = "default:desert_stone",
})

-- Include stone crafts using non cobblestone
minetest.register_craft({
	output = "desert_uses:pick_desert_stone",
	recipe = {
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "desert_uses:shovel_desert_stone",
	recipe = {
		{"default:desert_stone"},
		{"default:stick"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "desert_uses:axe_desert_stone",
	recipe = {
		{"default:desert_stone", "default:desert_stone"},
		{"default:desert_stone", "default:stick"},
		{"", "default:stick"},
	}
})

minetest.register_craft({
	output = "desert_uses:axe_desert_stone",
	recipe = {
		{"default:desert_stone", "default:desert_stone"},
		{"default:stick", "default:desert_stone"},
		{"default:stick", ""},
	}
})

minetest.register_craft({
	output = "desert_uses:sword_desert_stone",
	recipe = {
		{"default:desert_stone"},
		{"default:desert_stone"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "desert_uses:desert_furnace",
	recipe = {
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
		{"default:desert_stone", "", "default:desert_stone"},
		{"default:desert_stone", "default:desert_stone", "default:desert_stone"},
	}
})
