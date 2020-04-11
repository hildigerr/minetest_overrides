-----------------My Recipe and Node Redefinitions and Additions-----------------

-- ---Stone and Cobblestone Switch---
-- dofile(minetest.get_modpath("minetest_overrides").."/stoned.lua")

-- Stick from dry shrub
minetest.register_craft({
	output = "default:stick 1",
	recipe = {
		{"default:dry_shrub"},
	}
})

-- Stick from sapling
minetest.register_craft({
	output = "default:stick 2",
	recipe = {
		{"default:sapling"},
	}
})

-- ---gates_wooden: [Comment out original Crafts section]
-- dofile(minetest.get_modpath("minetest_overrides").."/gates_wooden_changes.lua")
--
-- ---homedecor:
-- dofile(minetest.get_modpath("minetest_overrides").."/homedecor_changes.lua")
--
-- ---moreblocks:
-- dofile(minetest.get_modpath("minetest_overrides").."/moreblocks_changes.lua")
--
-- ---moreores:
-- --copper tools and rebalance tool characteristics [also includes desert_uses stone tools]
-- dofile(minetest.get_modpath("minetest_overrides").."/tool_balance.lua")
--
-- ---plantlife:
-- dofile(minetest.get_modpath("minetest_overrides").."/plantlife_changes.lua")
--
-- ---Dye Recipes (instead of Unified Dyes)
-- dofile(minetest.get_modpath("minetest_overrides").."/my_dyes.lua")
--
-- --Teleporters:[comment out lines 172-186]
-- dofile(minetest.get_modpath("minetest_overrides").."/teleporters_changes.lua")
--
-- ----Snow:
-- dofile(minetest.get_modpath("minetest_overrides").."/snow_changes.lua")
--
--
-- ---wool:
-- dofile(minetest.get_modpath("minetest_overrides").."/wool_recipes.lua")
--
--
-- ----[Modify Stairs to produce 8 instead of 4]----
--
--
-- ---TEXTURE PACK ANIMATIONS
-- dofile(minetest.get_modpath("minetest_overrides").."/texture_pack_additions.lua")
