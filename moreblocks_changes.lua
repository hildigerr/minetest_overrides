---moreblocks:
minetest.register_craft({
	output = "moreblocks:emptybookshelf 1",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"", "", ""},
		{"group:wood", "group:wood", "group:wood"},
	}
})--[Comment Out Lines:377-383]

minetest.register_craft({
type = "shapeless",
	output = 'default:bookshelf',
	recipe = {
		 "default:book", "default:book", "default:book", "moreblocks:emptybookshelf",
	}
})

--Fix but unchange some recipes [from Lines:479-595]
minetest.register_craft({
	output = "moreblocks:cleanglass 1",
	type = "shapeless",
	recipe = {"moreblocks:sweeper", "default:glass"},
})

minetest.register_craft({
	output = "moreblocks:glowglass 1",
	type = "shapeless",
	recipe = {"default:torch", "default:glass"},
})

minetest.register_craft({
	output = ":moreblocks:superglowglass 1",
	type = "shapeless",
	recipe = {"default:torch", "default:torch", "default:glass"},
})

--Increase ouput of some recipes [from Lines:385-391 & 519-531]
minetest.register_craft({
-- output = "moreblocks:ironstonebrick 1"
	output = "moreblocks:ironstonebrick 2",
	recipe = {
		{"default:steel_ingot"},
		{"moreblocks:stonebrick"},
	}
})

minetest.register_craft({
--	output = "moreblocks:ironstone 1",
	output = "moreblocks:ironstone 2",
	type = "shapeless",
	recipe = {"lump_of_iron", "stone"},
})

minetest.register_craft({
--	output = "moreblocks:cactusbrick 1",
	output = "moreblocks:cactusbrick 2",
	recipe = {
		{"cactus"},
		{"brick"},
	}
})

--Decrease output of some recipes [from Lines:84-107]
minetest.register_craft({
--	output = "default:sign_wall 4",
	output = "default:sign_wall 2",
	recipe = {
		{"default:wood", "default:wood", "default:wood"},
		{"default:wood", "default:wood", "default:wood"},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
--	output = "default:ladder 3",
	output = "default:ladder 2",
	recipe = {
		{"default:stick", "", "default:stick"},
		{"default:stick", "default:stick", "default:stick"},
		{"default:stick", "", "default:stick"},
	}
})

minetest.register_craft({
--	output = "default:paper 3",
	output = "default:paper 2",
	recipe = {
		{"default:papyrus", "default:papyrus", "default:papyrus"},
	}
})

--Comment out some recipes:
--Lines:266-272 --already handled by default
--Lines:282-288,298-304 --waste of mese

minetest.register_craft({
	output = "moreblocks:circlestonebrick 4",
	recipe = {
		{"moreblocks:stonesquare", "moreblocks:stonesquare"},
		{"moreblocks:stonesquare", "moreblocks:stonesquare"},
	}
})--[Comment out Lines:336-343] -- interferes with prefered furnace recipe

--Adjust some recipes to conform with preference
minetest.register_craft({
	output = "moreblocks:stonebrick 4",
	recipe = {
		{"cobble", "cobble"},
		{"cobble", "cobble"},
	}
})--[Replaces Lines:328-334]

minetest.register_craft({
	output = "moreblocks:stonesquare 4",
	recipe = {
		{"stone", "stone"},
		{"stone", "stone"},
	}
})--[Replaces Lines:362-368]

--Redefine Stone-like nodes to be in group:stone
minetest.register_node(":moreblocks:stonebrick", {
	description = "Stone Bricks",
	tiles = {"moreblocks_stonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":moreblocks:circlestonebrick", {
	description = "Circle Stone Bricks",
	tiles = {"moreblocks_circlestonebrick.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":moreblocks:stonesquare", {
	description = "Stonesquare",
	tiles = {"moreblocks_stonesquare.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node(":moreblocks:splitstonesquare", {
	description = "Split Stonesquare",
	tiles = {"moreblocks_splitstonesquare_top.png", "moreblocks_splitstonesquare.png"},
	is_ground_content = true,
	groups = {cracky=3, stone=1},
	sounds = default.node_sound_stone_defaults(),
})
