--Chains: --make place like rope and change textures
minetest.register_node(":chains:chain", {
    description = "Chain",
    walkable = false,
    climbable = true,
    sunlight_propagates = true,
    paramtype = "light",
    drops = "",
	 inventory_image = "Chain_inv.png",
    tile_images = { "Chain.png" },
    drawtype = "plantlike",
	 on_place = place_rope,
	 after_dig_node = function(pos, oldnode, oldmetadata, digger)
		local num = 0
		local below = {x=pos.x,y=pos.y -1,z=pos.z}
		while minetest.env:get_node(below).name == "chains:chain" do
			minetest.env:remove_node(below)
			below.y = below.y -1
			num = num + 1
		end
		if num ~= 0 then
			digger:get_inventory():add_item("main", "chains:chain "..num)
		end
    end,
    groups = {cracky=3},
    sounds =  default.node_sound_stone_defaults(),
    })
	 
minetest.register_craft({
	output = "chains:chain 2",
	recipe = {
		{'default:steel_ingot'},
		{'default:steel_ingot'},
		{'default:steel_ingot'},
	}
})

minetest.register_craft({ --[Comment out lines 56-62]
	output = 'chains:chandelier',
	recipe = {
		{'default:torch', 'chains:chain', 'default:torch'},
		{'default:torch', 'chains:chain', 'default:torch'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

