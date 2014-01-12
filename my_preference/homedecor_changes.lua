-----------------------------------homedecor-----------------------------------

--crafts.lua:

-- minetest.register_craftitem(":unifieddyes:white_paint", {
-- 	description = "Bucket of white paint",
-- 	inventory_image = "homedecor_white_paint.png",
-- 	groups = {dye=1, basecolor_white=1, excolor_white=1, unicolor_white=1}
-- })

minetest.register_craft( {
	type = "shapeless",
	output = "unifieddyes:titanium_dioxide 6",
	recipe = {"default:stone"}
})--[Original @ Lines:20-24]

--additional alternatives:[DEPEND ON MOREBLOCKS]
minetest.register_craft({
	type = "cooking",
	output = "unifieddyes:titanium_dioxide 10",  
	recipe = "moreblocks:ironglass",
})

minetest.register_craft({
	type = "cooking",
	output = "unifieddyes:titanium_dioxide 20",
	recipe = "moreblocks:ironstone",
})


minetest.register_craft( {
	type = "shapeless",
	output = "unifieddyes:white_paint",
	recipe = {
	        "unifieddyes:titanium_dioxide",
	        "bucket:bucket_water",
	        "default:dry_shrub",
--	        "default:dry_shrub",
	},
})--[Original @ Lines:41-50]

minetest.register_craft( {
	type = "shapeless",
	output = "unifieddyes:white_paint",
	recipe = {
		"unifieddyes:titanium_dioxide",
		"bucket:bucket_water",
		"default:leaves",
		"default:leaves",
--		"default:leaves",
	},
})--[Original @ Lines:52-62]

--[I Comment out Original @ Lines:133-140 for now]

-- Curtains --[Original @ Lines:1003-1024]
local curtaincolors = {
	"red",
	"green",
	"blue",
	"white",
	"pink",
	"violet"
}

local morecurtaincolors = {
	"grey",
	"black",
	"yellow",
	"orange",
}

for c in ipairs(curtaincolors) do
	local color = curtaincolors[c]
	minetest.register_craft( {
		output = "homedecor:curtain_"..color.." 3",
		recipe = {
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
		},
	})
	for j in ipairs(curtaincolors) do
		local base = curtaincolors[j]
		if color ~= base then
		 	minetest.register_craft({
				type = "shapeless",
				output = "homedecor:curtain_"..base,
				recipe = { 
					"homedecor:curtain_"..color,
					"group:basecolor_"..base,
				},
			})
		end -- if
	end -- for j
	for k in ipairs(morecurtaincolors) do
		local base = morecurtaincolors[k]
		minetest.register_craft({
			type = "shapeless",
			output = "homedecor:curtain_"..base,
			recipe = { 
				"homedecor:curtain_"..color,
				"group:basecolor_"..base,
			},
		})
	end -- for k
end -- for c


for c in ipairs(morecurtaincolors) do
	local color = morecurtaincolors[c]
	
	minetest.register_node(":homedecor:curtain_"..color, {
		description = "Curtains ("..color..")",
		tiles = { "homedecor_curtain_"..color..".png" },
		inventory_image = "homedecor_curtain_"..color..".png",
		wield_image = "homedecor_curtain_"..color..".png",
		drawtype = 'signlike',
		sunlight_propagates = false,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		groups = { snappy = 3 },
		sounds = default.node_sound_leaves_defaults(),
		paramtype2 = 'wallmounted',
		selection_box = {
			type = "wallmounted",
			--wall_side = = <default>
		},
	})

	minetest.register_craft( {
		output = "homedecor:curtain_"..color.." 3",
		recipe = {
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
		},
	})
	
	for j in ipairs(morecurtaincolors) do
		local base = morecurtaincolors[j]
		if color ~= base then
		 	minetest.register_craft({
				type = "shapeless",
				output = "homedecor:curtain_"..base,
				recipe = { 
					"homedecor:curtain_"..color,
					"group:basecolor_"..base,
				},
			})
		end -- if
	end -- for j
	for k in ipairs(curtaincolors) do
		local base = curtaincolors[k]
	 	minetest.register_craft({
			type = "shapeless",
			output = "homedecor:curtain_"..base,
			recipe = { 
				"homedecor:curtain_"..color,
				"group:basecolor_"..base,
			},
		})
	end -- for k
end -- for c


--TO USE SINK:
-- drop bucket onto sink node
-- pick up bucket and puch sink at same time
--if you aim to hit the bucket above the sink so that you punch a
--node other than the sink you will recieve it empty
--if you punch the sink as you pick up the bucket you will recieve a
--bucket of water.
minetest.register_node(':homedecor:kitchen_cabinet_with_sink', {
	description = "Kitchen Cabinet with sink",
	tiles = { 'homedecor_kitchen_cabinet_sinktop.png',
			'homedecor_kitchen_cabinet_bottom.png',
			'homedecor_kitchen_cabinet_sides.png',
			'homedecor_kitchen_cabinet_sides.png',
			'homedecor_kitchen_cabinet_sides.png',
			'homedecor_kitchen_cabinet_front.png'},
	sunlight_propagates = false,
	stack_max = 1,
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = true,
	groups = { snappy = 3 },
	sounds = default.node_sound_leaves_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec",
				"size[8,7]"..
				"list[current_name;main;0,0;8,2;]"..
				"list[current_player;main;0,3;8,4;]")
		meta:set_string("infotext", "Under-sink cabinet")
		local inv = meta:get_inventory()
		inv:set_size("main", 16)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
		return inv:is_empty("main")
	end,
	on_metadata_inventory_move = function(pos, from_list, from_index, to_list, to_index, count, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff in under-sink cabinet at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_put = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" moves stuff to under-sink cabinet at "..minetest.pos_to_string(pos))
	end,
    on_metadata_inventory_take = function(pos, listname, index, stack, player)
		minetest.log("action", player:get_player_name()..
				" takes stuff from under-sink cabinet at "..minetest.pos_to_string(pos))
	end,

	on_punch = function (pos, node, puncher)
		local tool = puncher:get_wielded_item()
		if tool then if tool:get_name() == "bucket:bucket_empty" then
 			puncher:get_inventory():remove_item("main", "bucket:bucket_empty")
 			puncher:get_inventory():add_item("main", "bucket:bucket_water")
		end end
	end
})
