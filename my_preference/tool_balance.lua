--Default Redefinitions:
minetest.register_tool(":default:pick_wood", {
	description = "Wooden Pickaxe",
	inventory_image = "default_tool_woodpick.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.00, [3]=1.20}, uses=10, maxlevel=1},
			fleshy = {times={[2]=1.00, [3]=0.70}, uses=15, maxlevel=1}
		}
	},
})

minetest.register_tool(":default:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "default_tool_stonepick.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.80, [3]=1.10}, uses=20, maxlevel=1},
			fleshy = {times={[2]=0.95, [3]=0.60}, uses=25, maxlevel=1}
		}
	},
})

minetest.register_tool(":default:pick_steel", {
	description = "Steel Pickaxe",
	inventory_image = "default_tool_steelpick.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=3.50, [2]=1.50, [3]=0.95}, uses=30, maxlevel=2},
			fleshy = {times={[2]=0.65, [3]=0.45}, uses=35, maxlevel=1}
		}
	},
})

minetest.register_tool(":default:shovel_wood", {
	description = "Wooden Shovel",
	inventory_image = "default_tool_woodshovel.png",
	wield_image = "default_tool_woodshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=0.80, [3]=0.60}, uses=10, maxlevel=1},
			fleshy = {times={[2]=0.95, [3]=0.70}, uses=25, maxlevel=1}
		}
	},
})
minetest.register_tool(":default:shovel_stone", {
	description = "Stone Shovel",
	inventory_image = "default_tool_stoneshovel.png",
	wield_image = "default_tool_stoneshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=2.50, [2]=0.75, [3]=0.60}, uses=20, maxlevel=1},
			fleshy = {times={[2]=0.95, [3]=0.60}, uses=40, maxlevel=1}
		}
	},
})
minetest.register_tool(":default:shovel_steel", {
	description = "Steel Shovel",
	inventory_image = "default_tool_steelshovel.png",
	wield_image = "default_tool_steelshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.70, [3]=0.50}, uses=30, maxlevel=2},
			fleshy = {times={[2]=0.50, [3]=0.40}, uses=50, maxlevel=1}
		}
	},
})
minetest.register_tool(":default:axe_wood", {
	description = "Wooden Axe",
	inventory_image = "default_tool_woodaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=1.50, [3]=1.00}, uses=10, maxlevel=1},
			snappy={times={[2]=1.00, [3]=0.50}, uses=10, maxlevel=1},
			fleshy = {times={[2]=0.70, [3]=0.50}, uses=10, maxlevel=1}
		}
	},
})
minetest.register_tool(":default:axe_stone", {
	description = "Stone Axe",
	inventory_image = "default_tool_stoneaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.40, [3]=0.90}, uses=20, maxlevel=1},
			snappy={times={[2]=0.90, [3]=0.40}, uses=20, maxlevel=1},
			fleshy={times={[2]=0.60, [3]=0.40}, uses=15, maxlevel=1}
		}
	},
})
minetest.register_tool(":default:axe_steel", {
	description = "Steel Axe",
	inventory_image = "default_tool_steelaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.25, [3]=0.70}, uses=30, maxlevel=2},
			snappy={times={[2]=0.80, [3]=0.35}, uses=35, maxlevel=1},
			fleshy={times={[2]=0.50, [3]=0.35}, uses=30, maxlevel=1}
		}
	},
})
minetest.register_tool(":default:sword_wood", {
	description = "Wooden Sword",
	inventory_image = "default_tool_woodsword.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=0,
		groupcaps={
			fleshy={times={[2]=1.10, [3]=0.60}, uses=10, maxlevel=1},
			snappy={times={[2]=0.90, [3]=0.45}, uses=15, maxlevel=1},
			choppy={times={[3]=1.00}, uses=20, maxlevel=0}
		}
	}
})
minetest.register_tool(":default:sword_stone", {
	description = "Stone Sword",
	inventory_image = "default_tool_stonesword.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=0,
		groupcaps={
			fleshy={times={[2]=1.00, [3]=0.50}, uses=15, maxlevel=1},
			snappy={times={[2]=0.80, [3]=0.35}, uses=20, maxlevel=1},
			choppy={times={[3]=0.90}, uses=25, maxlevel=0}
		}
	}
})
minetest.register_tool(":default:sword_steel", {
	description = "Steel Sword",
	inventory_image = "default_tool_steelsword.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=10, maxlevel=2},
			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
		}
	}
})


-- Desertuses Redefinitions:
minetest.register_tool(":desert_uses:pick_desert_stone", {
	description = "Desert Stone Pickaxe",
	inventory_image = "desert_uses_tool_desert_stonepick.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky={times={[1]=4.00, [2]=1.80, [3]=1.10}, uses=20, maxlevel=1},
			fleshy={times={[2]=0.95, [3]=0.60}, uses=25, maxlevel=1},
		}
	},
})

minetest.register_tool(":desert_uses:shovel_desert_stone", {
	description = "Desert Stone Shovel",
	inventory_image = "desert_uses_tool_desert_stoneshovel.png",
	tool_capabilities = {
		full_punch_interval = 1.4,
		max_drop_level=0,
		groupcaps={
			crumbly={times={[1]=2.50, [2]=0.75, [3]=0.60}, uses=20, maxlevel=1},
			fleshy={times={[2]=0.95, [3]=0.60}, uses=40, maxlevel=1},
		}
	},
})

minetest.register_tool(":desert_uses:axe_desert_stone", {
	description = "Desert Stone Axe",
	inventory_image = "desert_uses_tool_desert_stoneaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			choppy={times={[1]=3.05, [2]=1.45, [3]=0.90}, uses=20, maxlevel=1},
			snappy={times={[2]=0.95, [3]=0.40}, uses=20, maxlevel=1},
			fleshy={times={[2]=0.60, [3]=0.40}, uses=15, maxlevel=1},
		}
	}
})

minetest.register_tool(":desert_uses:sword_desert_stone", {
	description = "Desert Stone Sword",
	inventory_image = "desert_uses_tool_desert_stonesword.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=0,
		groupcaps={
			fleshy={times={[2]=0.95, [3]=0.50}, uses=15, maxlevel=1},
			snappy={times={[2]=0.85, [3]=0.35}, uses=20, maxlevel=1},
			choppy={times={[3]=0.90}, uses=25, maxlevel=0}
		}
	}
})


--[[
Adapted From:
More Ores by Calinou with the help of MarkTraceur, GloopMaster and Kotolegokot
Licensed under GPLv3 or later for code and zlib/libpng for textures, see: http://www.gnu.org/licenses/gpl-3.0.html
--]]

local modname = "moreores"

local oredefs = {
	copper = {
		tools = {
			pick = {
				cracky={times={[1]=3.75, [2]=1.60, [3]=1.00}, uses=25, maxlevel=1},
				fleshy={times={[2]=0.70, [3]=0.50}, uses=30, maxlevel=1}
			},
			shovel = {
				crumbly={times={[1]=2.00, [2]=0.70, [3]=0.55}, uses=25, maxlevel=2},
				fleshy={times={[2]=0.75, [3]=0.50}, uses=45, maxlevel=1}
			},
			axe = {
				choppy={times={[1]=2.75, [2]=1.30, [3]=0.80}, uses=25, maxlevel=1},
				snappy={times={[2]=0.85, [3]=0.35}, uses=25, maxlevel=1},
				fleshy={times={[2]=0.50, [3]=0.35}, uses=20, maxlevel=1}
			},
			sword = {
				fleshy={times={[1]=3.00, [2]=0.80, [3]=0.40}, uses=20, maxlevel=2},
				snappy={times={[2]=0.75, [3]=0.30}, uses=25, maxlevel=1},
				choppy={times={[3]=0.80}, uses=30, maxlevel=0}
			}
		},
		punchint = 0.8
	},
	bronze = {
		tools = {
			pick = {
				cracky={times={[1]=3.75, [2]=1.60, [3]=1.00}, uses=30, maxlevel=1},
				fleshy={times={[2]=0.70, [3]=0.50}, uses=35, maxlevel=1}
			},
			shovel = {
				crumbly={times={[1]=2.00, [2]=0.70, [3]=0.55}, uses=30, maxlevel=2},
				fleshy={times={[2]=0.75, [3]=0.50}, uses=50, maxlevel=1}
			},
			axe = {
				choppy={times={[1]=2.75, [2]=1.30, [3]=0.80}, uses=30, maxlevel=1},
				snappy={times={[2]=0.85, [3]=0.35}, uses=30, maxlevel=1},
				fleshy={times={[2]=0.50, [3]=0.35}, uses=25, maxlevel=1}
			},
			sword = {
				fleshy={times={[1]=3.00, [2]=0.80, [3]=0.40}, uses=25, maxlevel=2},
				snappy={times={[2]=0.75, [3]=0.30}, uses=30, maxlevel=1},
				choppy={times={[3]=0.80}, uses=35, maxlevel=0}
			}
		},
		punchint = 0.8
	},
 	silver = {
 		tools = {
			pick = {
				cracky={times={[1]=3.25, [2]=1.40, [3]=0.85}, uses=30, maxlevel=2},
				fleshy={times={[2]=0.60, [3]=0.40}, uses=35, maxlevel=1}
			},
			shovel = {
				crumbly={times={[1]=1.00, [2]=0.50, [3]=0.35}, uses=30, maxlevel=3},
				fleshy={times={[1]=3.00, [2]=0.45, [3]=0.30}, uses=55, maxlevel=1}
			},
			axe = {
				choppy={times={[1]=2.25, [2]=1.20, [3]=0.60}, uses=30, maxlevel=2},
				snappy={times={[2]=0.75, [3]=0.30}, uses=25, maxlevel=1},
				fleshy={times={[2]=0.40, [3]=0.30}, uses=25, maxlevel=1}
			},
			sword = {
				fleshy={times={[1]=1.75, [2]=0.75, [3]=0.35}, uses=30, maxlevel=2},
				snappy={times={[1]=3.00, [2]=0.65, [3]=0.25}, uses=25, maxlevel=1},
				choppy={times={[3]=0.60}, uses=30, maxlevel=0}
			}
		},
		punchint = 0.8
 	},
	gold = {
		tools = {
			pick = {
				cracky={times={[1]=3.25, [2]=1.30, [3]=0.80}, uses=25, maxlevel=2},
				fleshy={times={[1]=4.00, [2]=0.60, [3]=0.40}, uses=30, maxlevel=1}
			},
			shovel = {
				crumbly={times={[1]=1.25, [2]=0.60, [3]=0.40}, uses=30, maxlevel=2},
				fleshy={times={[1]=3.00, [2]=0.45, [3]=0.30}, uses=50, maxlevel=1}
			},
			axe = {
				choppy={times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=40, maxlevel=3},
				snappy={times={[1]=3.00, [2]=0.70, [3]=0.30}, uses=30, maxlevel=1},
				fleshy={times={[1]=3.00, [2]=0.40, [3]=0.30}, uses=30, maxlevel=1}
			},
			sword = {
				fleshy={times={[1]=1.70, [2]=0.70, [3]=0.30}, uses=30, maxlevel=2},
				snappy={times={[1]=2.50, [2]=0.65, [3]=0.25}, uses=30, maxlevel=1},
				choppy={times={[2]=2.75, [3]=0.60}, uses=35, maxlevel=1}
			}
 		},
		punchint = 0.7
	},
	mithril = {
		tools = {
			pick = {
				cracky={times={[1]=3.00, [2]=1.20, [3]=0.75}, uses=40, maxlevel=2},
				fleshy={times={[1]=3.80, [2]=0.55, [3]=0.35}, uses=45, maxlevel=1}
			},
			shovel = {
				crumbly={times={[1]=1.00, [2]=0.60, [3]=0.35}, uses=40, maxlevel=2},
				fleshy={times={[1]=2.75, [2]=0.40, [3]=0.30}, uses=60, maxlevel=1}
			},
			axe = {
				choppy={times={[1]=2.00, [2]=1.00, [3]=0.50}, uses=45, maxlevel=2},
				snappy={times={[1]=2.50, [2]=0.70, [3]=0.30}, uses=35, maxlevel=2},
				fleshy={times={[1]=2.50, [2]=0.40, [3]=0.30}, uses=30, maxlevel=1}
			},
			sword = {
				fleshy={times={[1]=1.70, [2]=0.65, [3]=0.30}, uses=40, maxlevel=3},
				snappy={times={[1]=2.00, [2]=0.65, [3]=0.25}, uses=35, maxlevel=2},
				choppy={times={[1]=3.00, [2]=2.75, [3]=0.60}, uses=40, maxlevel=1}
			}
		},
		punchint = 0.6
	}
}

for mineral_name,oredef in pairs(oredefs) do
	local firstlet = string.upper(string.sub(mineral_name, 1, 1))
	local upcase_name = firstlet .. string.sub(mineral_name, 2)
	local img_base = modname .. "_" .. mineral_name
	local toolimg_base = modname .. "_tool_"..mineral_name
	local tool_base = ":" .. modname .. ":"
	local tool_post = "_" .. mineral_name
	local item_base = tool_base .. mineral_name

	for toolname, tooldef in pairs(oredef.tools) do
		local tflet = string.upper(string.sub(toolname, 0, 1))
		local upcase_toolname = tflet..string.sub(toolname, 2)
		local tdef = {
			description = upcase_name .. " " .. upcase_toolname,
			inventory_image = toolimg_base .. toolname .. ".png",
			tool_capabilities = {
				max_drop_level=3,
				groupcaps=tooldef
			}
		}

		if toolname == "sword" then
			tdef.full_punch_interval = oredef.punchint
		elseif toolname == "pick" then
			tdef.description = upcase_name .. " Pickaxe"
			tdef.full_punch_interval = oredef.punchint + 0.2
		elseif toolname == "shovel" then
			tdef.full_punch_interval = oredef.punchint + 0.2
		else -- toolname == "axe"
			tdef.full_punch_interval = oredef.punchint + 0.1
		end

		local fulltoolname = tool_base .. toolname .. tool_post
		minetest.register_tool(fulltoolname, tdef)
 	end
end

-- -- --Titanium:[[[[[[[REMOVED]]]]]]]
-- --
-- -- minetest.register_tool(":titanium:sword", {
-- -- 	description = "Titanium Sword",
-- -- 	inventory_image = "titanium_sword.png",
-- -- 	tool_capabilities = {
-- -- 		full_punch_interval = 0.8,
-- -- 		max_drop_level=1,
-- -- 		groupcaps={
-- -- 			fleshy={times={[1]=2.00, [2]=0.80, [3]=0.40}, uses=35, maxlevel=2},
-- -- 			snappy={times={[2]=0.70, [3]=0.30}, uses=40, maxlevel=1},
-- -- 			choppy={times={[3]=0.70}, uses=40, maxlevel=0}
-- -- 		}
-- -- 	}
-- -- })
-- --
-- -- minetest.register_tool(":titanium:axe", {
-- -- 	description = "Titanium Axe",
-- -- 	inventory_image = "titanium_axe.png",
-- -- 	tool_capabilities = {
-- -- 		max_drop_level=1,
-- -- 		groupcaps={
-- -- 			choppy={times={[1]=2.50, [2]=1.20, [3]=0.70}, uses=35, maxlevel=2},
-- -- 			snappy={times={[2]=0.80, [3]=0.50}, uses=40, maxlevel=1},
-- -- 			fleshy={times={[2]=0.50, [3]=0.35}, uses=35, maxlevel=1}
-- -- 		}
-- -- 	},
-- -- })
-- --
-- -- minetest.register_tool(":titanium:shovel", {
-- -- 	description = "Titanium Shovel",
-- -- 	inventory_image = "titanium_shovel.png",
-- -- 	tool_capabilities = {
-- -- 		max_drop_level=1,
-- -- 		groupcaps={
-- -- 			crumbly={times={[1]=1.50, [2]=0.70, [3]=0.50}, uses=35, maxlevel=3},
-- -- 			fleshy={times={[2]=0.50, [3]=0.40}, uses=55, maxlevel=1}
-- -- 		}
-- -- 	},
-- -- })
-- -- 	
-- -- 	minetest.register_tool(":titanium:pick", {
-- -- 	description = "Titanium Pickaxe",
-- -- 	inventory_image = "titanium_pick.png",
-- -- 	tool_capabilities = {
-- -- 		full_punch_interval = 1.0,
-- -- 		max_drop_level=3,
-- -- 		groupcaps={
-- -- 			cracky={times={[1]=3.50, [2]=1.50, [3]=0.90}, uses=35, maxlevel=3},
-- -- 			fleshy={times={[2]=0.65, [3]=0.45}, uses=40, maxlevel=1}
-- -- 		}
-- -- 	},
-- -- })