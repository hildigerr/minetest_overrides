--Redefine Wool Craft Quantities [from 16 to 1]:
local wool = {}
wool.dyes = {
	{"grey",       "basecolor_grey"},
	{"black",      "basecolor_black"},
	{"red",        "basecolor_red"},
	{"yellow",     "basecolor_yellow"},
	{"green",      "basecolor_green"},
	{"cyan",       "basecolor_cyan"},
	{"blue",       "basecolor_blue"},
	{"magenta",    "basecolor_magenta"},
	{"orange",     "excolor_orange"},
	{"violet",     "excolor_violet"},
	{"brown",      "unicolor_dark_orange"},
	{"pink",       "unicolor_light_red"},
	{"dark_grey",  "unicolor_darkgrey"},
	{"dark_green", "unicolor_dark_green"},
}

for _, col in ipairs(wool.dyes) do
	local name = col[1]
	local craft_color_group = col[2]
	
	--Crafting from dye and white wool
	minetest.register_craft({
		type = "shapeless",
		output = 'wool:'..name..' 1',
		recipe = {'group:dye,'..craft_color_group, 'wool:white'},
	})

	--White dye always reverts wool to white
	minetest.register_craft({
		type = "shapeless",
		output = 'wool:white 1',
		recipe = {'group:dye,basecolor_white', 'wool:'..name},
	})

end


----Skip Making Dye: [OPT]
-- minetest.register_craft({
-- 	output = 'wool:red 1',
-- 	recipe = {
-- 		{'default:apple', 'wool:white'},
-- 	}
-- })

-- minetest.register_craft({
-- 	output = 'wool:green 1',
-- 	recipe = {
-- 		{'default:leaves', 'wool:white'},
-- 	}
-- })

--Other Dyes
minetest.register_craft({
	output = 'wool:black 1',
	recipe = {
		{'default:coal_lump', 'wool:grey'},
	}
})

minetest.register_craft({
	output = 'wool:grey 1',
	recipe = {
		{'default:coal_lump', 'wool:white'},
	}
})

minetest.register_craft({
	output = 'wool:brown 1',
	recipe = {
		{'default:dirt', 'wool:white'},
	}
})

minetest.register_craft({
	output = 'wool:cyan 1',
	recipe = {
		{'default:jungletree', 'wool:white'},
	}
})

--Wool Combinations:
minetest.register_craft({
	output = 'wool:magenta 2',
	recipe = {
		{'wool:cyan', 'wool:red'},
	}
})

minetest.register_craft({
	output = 'wool:blue 2',
	recipe = {
		{'wool:cyan', 'wool:magenta'},
	}
})


minetest.register_craft({
	output = 'wool:orange 2',
	recipe = {
		{'wool:yellow', 'wool:red'},
	}
})

--Wool From Cotton ---TODO: MAKE COTTON RECIPES TO PARALLEL WOOL
minetest.register_craft( {
    output = "wool:white",
    recipe = {
            { "flowers:cotton", "flowers:cotton"},
            { "flowers:cotton", "flowers:cotton"}
    },
})


--MSC Dye recipes (Not necisarily for wool-crafts)
minetest.register_craft({
	type = "shapeless",
	output = "default:desert_sand",
	recipe = {'group:dye,basecolor_orange','default:sand'},
})
