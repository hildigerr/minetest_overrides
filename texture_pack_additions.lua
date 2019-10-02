minetest.register_node(":default:furnace_active", {
	description = "Furnace",
	tiles = {"default_furnace_top.png", "default_furnace_bottom.png", "default_furnace_side.png",
		"default_furnace_side.png", "default_furnace_side.png",
		{name="default_furnace_front_active_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=8.0}}},
	paramtype2 = "facedir",
	light_source = 8,
	drop = "default:furnace",
	groups = {cracky=2, not_in_creative_inventory=1},
	legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", default.furnace_inactive_formspec)
		meta:set_string("infotext", "Furnace");
		local inv = meta:get_inventory()
		inv:set_size("fuel", 1)
		inv:set_size("src", 1)
		inv:set_size("dst", 4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		if not inv:is_empty("fuel") then
			return false
		elseif not inv:is_empty("dst") then
			return false
		elseif not inv:is_empty("src") then
			return false
		end
		return true
	end,
})

minetest.register_craftitem(":default:steel_ingot", {
	description = "Steel Ingot",
	inventory_image = "default_steel_ingot.png",
	wield_image = "default_steel_ingot_wield.png",
})

minetest.register_craftitem(":default:clay_brick", {
	description = "Clay Brick",
	inventory_image = "default_clay_brick.png",
	wield_image = "default_clay_brick_wield.png",
})

minetest.register_craftitem(":moreores:copper_ingot", {
			description = "Copper Ingot",
			inventory_image = "moreores_copper_ingot.png",
			wield_image = "moreores_copper_ingot_wield.png",
			on_place_on_ground = minetest.craftitem_place_item
})
minetest.register_craftitem(":moreores:tin_ingot", {
			description = "Tin Ingot",
			inventory_image = "moreores_tin_ingot.png",
			wield_image = "moreores_tin_ingot_wield.png",
			on_place_on_ground = minetest.craftitem_place_item
})
minetest.register_craftitem(":moreores:bronze_ingot", {
			description = "bronze Ingot",
			inventory_image = "moreores_bronze_ingot.png",
			wield_image = "moreores_bronze_ingot_wield.png",
			on_place_on_ground = minetest.craftitem_place_item
})
minetest.register_craftitem(":moreores:silver_ingot", {
			description = "Silver Ingot",
			inventory_image = "moreores_silver_ingot.png",
			wield_image = "moreores_silver_ingot_wield.png",
			on_place_on_ground = minetest.craftitem_place_item
})
minetest.register_craftitem(":moreores:gold_ingot", {
			description = "Gold Ingot",
			inventory_image = "moreores_gold_ingot.png",
			wield_image = "moreores_gold_ingot_wield.png",
			on_place_on_ground = minetest.craftitem_place_item
})
minetest.register_craftitem(":moreores:mithril_ingot", {
			description = "Mithril Ingot",
			inventory_image = "moreores_mithril_ingot.png",
			wield_image = "moreores_mithril_ingot_wield.png",
			on_place_on_ground = minetest.craftitem_place_item
})

minetest.register_craftitem(":homedecor:brass_ingot", {
        description = "Brass Ingot",
        inventory_image = "homedecor_brass_ingot.png",
			wield_image = "homedecor_brass_ingot_wield.png",
		  
})