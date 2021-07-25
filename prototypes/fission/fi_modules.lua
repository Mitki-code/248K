--local functions
local function config(name)
    return settings.startup['fi_modules_'..name].value
end

local function sprite(name)
    return '__248k__/ressources/fission/fi_modules/fi_modules_'..name
end

local limitation_list = {
    'el_aluminum_ore_recipe',
    'el_aluminum_item_recipe',
    'el_lithium_ore_recipe',
    'el_lithium_item_recipe',
    'el_train_fuel_diesel_recipe',
    'el_energy_crystal_recipe',
    'fi_compound_material_recipe',
    'fi_materials_industrial_steel_recipe',
    'fu_lead_ore_recipe',
    'fi_base_crystal_recipe',
    'fi_catalyst_crystal_recipe',
    'fi_energy_crystal_recipe'
}

--item
data:extend({
    {
        name = 'fi_modules_productivity_1_item',
        type = 'module',
        icon = sprite('productivity_1.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_j',
        category = '248k_productivity_category',
        tier = 1,
        order = 'a-a',
        effect = {
            consumption = {bonus = 0.9},
            speed = {bonus = -0.2},
            productivity = {bonus = 0.08},
            pollution = {bonus = 0.3}
        },
        limitation = limitation_list,
        limitation_message_key = 'limitation_message',
    },
    {
        name = 'fi_modules_productivity_2_item',
        type = 'module',
        icon = sprite('productivity_2.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_j',
        category = '248k_productivity_category',
        tier = 2,
        order = 'a-a',
        effect = {
            consumption = {bonus = 1.4},
            speed = {bonus = -0.35},
            productivity = {bonus = 0.12},
            pollution = {bonus = 0.6}
        },
        limitation = limitation_list,
        limitation_message_key = 'limitation_message',
    },
    {
        name = 'fi_modules_productivity_3_item',
        type = 'module',
        icon = sprite('productivity_3.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_j',
        category = '248k_productivity_category',
        tier = 3,
        order = 'a-a',
        effect = {
            consumption = {bonus = 2.6},
            speed = {bonus = -0.6},
            productivity = {bonus = 0.20},
            pollution = {bonus = 0.9}
        },
        limitation = limitation_list,
        limitation_message_key = 'limitation_message',
    },
    {
        name = 'fi_modules_productivity_4_item',
        type = 'module',
        icon = sprite('productivity_4.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'gr_item_subgroup_d',
        category = '248k_productivity_category',
        tier = 4,
        order = 'a-a',
        effect = {
            consumption = {bonus = 2},
            speed = {bonus = -0.5},
            productivity = {bonus = 0.05},
            pollution = {bonus = 1}
        },
    },
    {
        name = 'fi_modules_productivity_5_item',
        type = 'module',
        icon = sprite('productivity_5.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'gr_item_subgroup_d',
        category = '248k_productivity_category',
        tier = 5,
        order = 'a-b',
        effect = {
            consumption = {bonus = 3},
            speed = {bonus = -0.7},
            productivity = {bonus = 0.1},
            pollution = {bonus = 1}
        },
    },
    {
        name = 'fi_modules_productivity_6_item',
        type = 'module',
        icon = sprite('productivity_6.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'gr_item_subgroup_d',
        category = '248k_productivity_category',
        tier = 6,
        order = 'a-c',
        effect = {
            consumption = {bonus = 6},
            speed = {bonus = -0.9},
            productivity = {bonus = 0.25},
            pollution = {bonus = 1}
        },
    },
    {
        name = 'fi_modules_base_item',
        type = 'item',
        icon = sprite('base.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_e',
        order = 'b-k',
    },
    {
        name = 'fi_modules_core_item',
        type = 'item',
        icon = sprite('core.png'),
        icon_size = 64,
        stack_size = 100,
        subgroup = 'fi_item_subgroup_e',
        order = 'b-x',
    },
    

})