---gates_wooden: [Comment out original Crafts section]
minetest.register_craft({
    output = '"gates_wooden:classic" 2',
    recipe = {
        {"default:wood", "default:stick", "default:wood"},
        {"default:wood", "default:stick", "default:wood"},
        {"default:wood", "default:stick", "default:wood"},
    },
})

minetest.register_craft({
    output = '"gates_wooden:long" 1',
    recipe = {
        {"default:stick", "default:wood", "default:stick"},
        {"default:stick", "default:wood", "default:stick"},
    },
})

minetest.register_craft({
    output = '"gates_wooden:short" 1',
    recipe = {
        {"default:stick", "default:wood", "default:stick"},
    },
})