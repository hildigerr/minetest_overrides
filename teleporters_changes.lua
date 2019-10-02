--Teleporters:[comment out lines 172-186]
minetest.register_craft({
	output = '"teleporters:spiral" 4',
	recipe = {
		{"moreores:gold_ingot","default:mese_crystal","moreores:gold_ingot"},
		{"default:mese_crystal","","default:mese_crystal"},
		{"moreores:gold_ingot","default:mese_crystal","moreores:gold_ingot"}
	}
})

minetest.register_craft({
	output = '"teleporters:base" 2',
	type = "shapeless",
	recipe = {"default:steel_ingot","default:steel_ingot","default:mese_crystal","default:mese_crystal","bucket:bucket_lava"},
	replacements = {{"bucket:bucket_lava","bucket:bucket"}},
})