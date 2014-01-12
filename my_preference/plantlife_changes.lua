---plantlife:
-- Include crafting mossycobble as in moreblocks for all sizes of junglegrass [assume moreblocks handles default]
minetest.register_craft({
	output = "default:mossycobble 1",
	recipe = {
		{"junglegrass:shortest"},
		{"default:cobble"},
	}
})

minetest.register_craft({
	output = "default:mossycobble 1",
	recipe = {
		{"junglegrass:short"},
		{"default:cobble"},
	}
})

minetest.register_craft({
	output = "default:mossycobble 1",
	recipe = {
		{"junglegrass:medium"},
		{"default:cobble"},
	}
})
--TODO:include recipes for turf too