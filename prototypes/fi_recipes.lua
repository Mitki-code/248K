--local functions
local function config(name)
    return settings.startup['el_solar_'..name].value
end

local function sprite(name)
    return '__248k__/ressources/'..name
end

data:extend({
    --crafter
    {
        name = 'fi_crafter_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'concrete',30},
            {'fi_materials_GFK',20},
            {'iron-gear-wheel',20},
            {'electronic-circuit',15},
            {'el_energy_crystal_item',4},
        },
        result = 'fi_crafter_item',
        result_count = 1,
        energy_required = 4,
    },
    {
        name = 'fi_castor_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'concrete',100},
            {'fi_materials_GFK',40},
            {'el_tank_item',1}
        },
        result = 'fi_castor_item',
        result_count = 1,
        energy_required = 4,
    },
    --crusher
    {
        name = 'fi_crusher_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'concrete',60},
            {'el_materials_ALK',20},
            {'iron-gear-wheel',40},
            {'electric-engine-unit',15},
            {'el_energy_crystal_item',10},
        },
        result = 'fi_crusher_item',
        result_count = 1,
        energy_required = 4,
    },
    --miner
    {
        name = 'fi_miner_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'concrete',100},
            {'fi_compound_material_item',60},
            {'iron-gear-wheel',40},
            {'electric-mining-drill',8},
            {'electric-engine-unit',10},
        },
        result = 'fi_miner_item',
        result_count = 1,
        energy_required = 4,
    },
    --fuels
    {
        name = 'fi_basic_fuel_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'uranium-235',1},
            {'uranium-238',19},
            {'el_materials_ALK',10},
        },
        result = 'fi_basic_fuel_item',
        result_count = 8,
        energy_required = 20,
    },
    {
        name = 'fi_basic_thorium_fuel_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_thorium232_item',10},
            {'uranium-238',10},
            {'el_materials_ALK',10},
        },
        result = 'fi_basic_thorium_fuel_item',
        result_count = 8,
        energy_required = 20,
    },
    {
        name = 'fi_advanced_fuel_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_plutonium239_item',1},
            {'uranium-238',19},
            {'el_materials_ALK',10},
        },
        result = 'fi_advanced_fuel_item',
        result_count = 2,
        energy_required = 20,
    },
    {
        name = 'fi_advanced_thorium_fuel_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_uranium233_item',4},
            {'uranium-238',16},
            {'el_materials_ALK',10},
        },
        result = 'fi_advanced_thorium_fuel_item',
        result_count = 2,
        energy_required = 20,
    },
    {
        name = 'fi_pure_fuel_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'uranium-235',1},
            {'fi_plutonium239_item',1},
            {'el_materials_ALK',10},
        },
        result = 'fi_pure_fuel_item',
        result_count = 1,
        energy_required = 20,
    },
    --reactor
    {
        name = 'fi_solid_reactor_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'steel-plate',450},
            {'concrete',400},
            {'fi_materials_GFK',300},
            {'fi_materials_NFK',300},
            {'fi_energy_crystal_item',40},
            {'advanced-circuit',500},
        },
        result = 'fi_solid_reactor_item',
        result_count = 1,
        energy_required = 20,
    },
    --material
    {
        name = 'fi_compound_material_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'el_aluminum_item',15},
            {'steel-plate',10},
            {'iron-plate',20},
        },
        result = 'fi_compound_material_item',
        result_count = 2,
        energy_required = 4,
    },
    {
        name = 'fi_low-density-structure_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crafting_category',
        subgroup = 'fi_item_subgroup_b',
        ingredients = {
            {'fi_materials_glass_fiber',3},
            {'el_materials_ALK',3},
            {'copper-plate',30},
        },
        result = 'low-density-structure',
        result_count = 4,
        energy_required = 20,
        order = 'b-b',
    },

    --uran etc
    {
        name = 'fi_plutonium239_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'centrifuging',
        main_product = 'fi_plutonium239_item',
        ingredients = {
            {'fi_used_basic_fuel_item',6},
        },
        results = {
            {'fi_plutonium239_item',1},
            {'fi_materials_waste',1}
        },
        result_count = 1,
        energy_required = 20,
    },
    {
        name = 'fi_thorium232_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting-with-fluid',
        main_product = 'fi_thorium232_item',
        ingredients = {
            {'stone',80},
            {'el_energy_crystal_item',2},
            {type="fluid", name="sulfuric-acid", amount=140},
        },
        results = {
            {'fi_thorium232_item',2},
            {'uranium-238',3}
        },
        result_count = 1,
        energy_required = 40,
    },
    {
        name = 'fi_uranium233_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'centrifuging',
        main_product = 'fi_uranium233_item',
        ingredients = {
            {'fi_used_basic_thorium_fuel_item',6},
        },
        results = {
            {'fi_uranium233_item',1},
            {'fi_materials_waste',1}
        },
        result_count = 1,
        energy_required = 20,
    },
    {
        name = 'fi_atomic_bomb_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'explosive-rocket',10},
            {'fi_plutonium239_item',10},
            {'rocket-control-unit',10}
        },
        result = 'atomic-bomb',
        result_count = 1,
        energy_required = 20,
    },
    --wideraufbereitung
    {
        name = 'fi_advanced_fuel_recycle_recipe',
        type = 'recipe',
        enabled = 'false',
        main_product = 'uranium-238',
        category = 'centrifuging',
        ingredients = {
            {'fi_used_advanced_fuel_item',4},
        },
        results = {
            {'uranium-238',1},
            {'fi_materials_waste',1}
        },
        result_count = 3,
        energy_required = 20,
        subgroup = 'fi_item_subgroup_a',
        order = 'a-d',
        always_show_made_in = true,
    },
    {
        name = 'fi_advanced_thorium_fuel_recycle_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'centrifuging',
        main_product = 'uranium-238',
        ingredients = {
            {'fi_used_advanced_thorium_fuel_item',4},
        },
        results = {
            {'uranium-238',1},
            {'fi_materials_waste',1}
        },
        result_count = 3,
        energy_required = 20,
        subgroup = 'fi_item_subgroup_a',
        order = 'a-e',
        always_show_made_in = true,
    },
    {
        name = 'fi_pure_fuel_recycle_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'centrifuging',
        main_product = 'uranium-238',
        ingredients = {
            {'fi_used_pure_fuel_item',4},
        },
        results = {
            {'uranium-238',1},
            {'fi_materials_waste',1}
        },
        result_count = 3,
        energy_required = 20,
        subgroup = 'fi_item_subgroup_a',
        order = 'a-f',
        always_show_made_in = true,
    },
    --equip
    {
        name = 'fi_equipment_player_reactor_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_solid_reactor_item',1},
            {'fi_pure_fuel_item',1},
        },
        result = 'fi_equipment_player_reactor_item',
        result_count = 4,
        energy_required = 20,
    },
    {
        name = 'fi_equipment_player_shield_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_energy_crystal_item',100},
            {'low-density-structure',20},
            {'processing-unit',40},
            {'energy-shield-mk2-equipment',5}
        },
        result = 'fi_equipment_player_shield_item',
        result_count = 1,
        energy_required = 20,
    },
    {
        name = 'fi_train_equipment_generator_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_solid_reactor_item',1},
            {'low-density-structure',20},
            {'iron-gear-wheel',40},
            {'fi_pure_fuel_item',1},
        },
        result = 'fi_train_equipment_generator_item',
        result_count = 4,
        energy_required = 20,
    },
    --crystals
    {
        name = 'fi_energy_crystal_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_grower_category',
        ingredients = {
            {type="item", name="el_energy_crystal_item", amount=1},
            {type="fluid", name="fi_crystal_fluid", amount=50},
        },
        result = 'fi_energy_crystal_item',
        result_count = 2,
        energy_required = 4,
        always_show_made_in = true,
    },
    {
        name = 'fi_catalyst_crystal_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'centrifuging',
        ingredients = {
            {'el_train_fuel_diesel_energized_item',1},
        },
        result = 'fi_catalyst_crystal_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_base_crystal_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting-with-fluid',
        ingredients = {
            {type="fluid", name="fi_crystal_fluid", amount=100},
            {type="item", name="fi_catalyst_crystal_item", amount=1},
        },
        result = 'fi_base_crystal_item',
        result_count = 2,
        energy_required = 6,
    },
    {
        name = 'fi_crushed_crystal_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'el_energy_crystal_item',1},
        },
        result = 'fi_crushed_crystal_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crystal_fluid_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'chemistry',
        main_product = 'fi_crystal_fluid',
        ingredients = {
            {type="item", name="fi_crushed_crystal_item", amount=1},
            {type="item", name="fi_crushed_lithium_item", amount=1},
        },
        results = {
            {type="fluid", name="fi_crystal_fluid", amount=100},
        },
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'fi_fuel_train_crystal_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_energy_crystal_item',6},
            {'el_lithium_item',6},
            {'el_train_fuel_diesel_item',6},
        },
        result = 'fi_fuel_train_crystal_item',
        result_count = 4,
        energy_required = 5,
    },
    --crushed 
    {
        name = 'fi_crushed_lithium_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'el_lithium_item',1},
        },
        result = 'fi_crushed_lithium_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_iron_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'iron-plate',1},
        },
        result = 'fi_crushed_iron_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_copper_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'copper-plate',1},
        },
        result = 'fi_crushed_copper_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_aluminum_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'el_aluminum_item',1},
        },
        result = 'fi_crushed_aluminum_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_coal_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'coal',1},
        },
        result = 'fi_crushed_coal_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_stone_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'stone',1},
        },
        result = 'fi_crushed_stone_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_uranium_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'uranium-238',1},
        },
        result = 'fi_crushed_uranium_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    --matierals
    {
        name = 'fi_materials_industrial_steel_blend_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_crushed_coal_item',3},
            {'fi_crushed_iron_item',4},
            {'fi_crushed_aluminum_item',1},
        },
        result = 'fi_industrial_steel_blend_item',
        result_count = 2,
        energy_required = 4,
    },
    {
        name = 'fi_materials_industrial_steel_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'smelting',
        ingredients = {
            {'fi_industrial_steel_blend_item',4},
        },
        result = 'fi_industrial_steel_item',
        result_count = 2,
        energy_required = 2,
        always_show_made_in = true,
    },
    {
        name = 'fi_materials_steel_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'smelting',
        ingredients = {
            {'fi_industrial_steel_blend_item',1},
        },
        result = 'steel-plate',
        result_count = 4,
        energy_required = 6,
        subgroup = 'fi_item_subgroup_b',
        order = 'b-a',
        always_show_made_in = true,
    },
    --robo
    {
        name = 'fi_robo_port_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_robo_charger_item',1},
            {'fi_materials_GFK',40},
            {'fi_materials_titan',10},
            {'fi_materials_NFK',20},
        },
        result = 'fi_robo_port_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_robo_charger_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'roboport',1},
            {'el_materials_ALK',60},
            {'fi_energy_crystal_item',25},
            {'el_energy_crystal_item',25},
        },
        result = 'fi_robo_charger_item',
        result_count = 1,
        energy_required = 6,
    },
    --modules
    {
        name = 'fi_modules_base_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'low-density-structure',2},
            {'advanced-circuit',6},
        },
        result = 'fi_modules_base_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_core_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_base_item',1},
            {'fi_materials_GFK',1},
        },
        result = 'fi_modules_core_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_1_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_core_item',1},
            {'productivity-module',2},
            {'advanced-circuit',6},
        },
        result = 'fi_modules_productivity_1_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_2_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_productivity_1_item',4},
            {'fi_modules_core_item',1},
            {'productivity-module-2',2},
            {'processing-unit',6},
        },
        result = 'fi_modules_productivity_2_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_3_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_productivity_2_item',4},
            {'fi_modules_core_item',1},
            {'productivity-module-3',2},
            {'fu_tech_sign_item',40},
        },
        result = 'fi_modules_productivity_3_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_4_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_productivity_3_item',6},
            {'fi_modules_core_item',1},
            {'gr_materials_stack_up_item',4},
        },
        result = 'fi_modules_productivity_4_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_5_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_productivity_4_item',6},
            {'fi_modules_core_item',1},
            {'gr_materials_stack_down_item',4},
        },
        result = 'fi_modules_productivity_5_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_modules_productivity_6_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'fi_modules_productivity_5_item',6},
            {'fi_modules_core_item',1},
            {'gr_materials_fusion_cell_item',4},
        },
        result = 'fi_modules_productivity_6_item',
        result_count = 1,
        energy_required = 6,
    },
    {
        name = 'fi_fiberer_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting',
        ingredients = {
            {'concrete',60},
            {'el_materials_ALK',20},
            {'iron-gear-wheel',40},
            {'electric-engine-unit',15},
            {'el_energy_crystal_item',10},
        },
        result = 'fi_fiberer_item',
        result_count = 1,
        energy_required = 4,
    },
    {
        name = 'fi_natural_fiber_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_fiberer_category',
        main_product = 'fi_materials_natural_fiber',
        ingredients = {
            {type="item", name="wood", amount=1},
            --{type="fluid", name="steam", amount=240, temperature=165},
        },
        results = {
            {type="item", name="fi_materials_natural_fiber", amount=2},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'fi_glass_fiber_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_fiberer_category',
        main_product = 'fi_materials_glass_fiber',
        ingredients = {
            {type="item", name="fi_crushed_glass_item", amount=2},
            --{type="fluid", name="steam", amount=240, temperature=165},
        },
        results = {
            {type="item", name="fi_materials_glass_fiber", amount=1},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'fi_arc_glass_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="stone", amount=5},
        },
        results = {
            {type="fluid", name="fi_arc_glass", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_glass_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="fi_arc_glass", amount=100},
        },
        results = {
            {type="item", name="fi_materials_glass", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_crushed_glass_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_crushing',
        ingredients = {
            {'fi_materials_glass',1},
        },
        result = 'fi_crushed_glass_item',
        result_count = 2,
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'fi_flourite_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_flourite',
        ingredients = {
            {type="fluid", name="el_dirty_water", amount=100},
        },
        results = {
            {type="fluid", name="water", amount=100},
            {type="item", name="fi_materials_flourite", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_strong_acid_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'chemistry',
        main_product = 'fi_strong_acid',
        ingredients = {
            {type="fluid", name="water", amount=50},
            {type="fluid", name="sulfuric-acid", amount=50},
            {type="item", name="fi_materials_flourite", amount=1},
        },
        results = {
            {type="fluid", name="el_acidic_water", amount=20},
            {type="fluid", name="fi_strong_acid", amount=80},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_purify_stone_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_purifier_category',
        main_product = 'fi_dirty_water',
        ingredients = {
            {type="fluid", name="fi_strong_acid", amount=100},
            {type="fluid", name="water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="stone", amount=10}
        },
        results = {
            {type="fluid", name="fi_dirty_water", amount=50},
            {type="item", name="el_energy_crystal_item", amount=3},
            {type="item", name="el_materials_pure_iron", amount=3},
            {type="item", name="el_materials_pure_copper", amount=3},
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'fi_purify_iron_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_purifier_category',
        main_product = 'fi_thorium232_item',
        ingredients = {
            {type="fluid", name="fi_strong_acid", amount=200},
            {type="fluid", name="water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="iron-ore", amount=10}
        },
        results = {
            {type="fluid", name="fi_dirty_water", amount=50},
            {type="item", name="fi_thorium232_item", amount=2},
            {type="item", name="el_materials_pure_iron", amount=8}
        },
        energy_required = 4,
        always_show_made_in = true
    },
    {
        name = 'fi_purify_copper_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_purifier_category',
        main_product = 'uranium-238',
        ingredients = {
            {type="fluid", name="fi_strong_acid", amount=200},
            {type="fluid", name="water", amount=50},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="copper-ore", amount=10}
        },
        results = {
            {type="fluid", name="fi_dirty_water", amount=50},
            {type="item", name="uranium-238", amount=2},
            {type="item", name="el_materials_pure_copper", amount=8}
        },
        energy_required = 2,
        always_show_made_in = true
    },
    {
        name = 'fi_purify_uranium_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_purifier_category',
        main_product = 'fi_dirty_water',
        ingredients = {
            {type="fluid", name="fi_strong_acid", amount=1000},
            {type="fluid", name="water", amount=500},
            --{type="fluid", name="steam", amount=240, temperature=165},
            {type="item", name="uranium-ore", amount=100}
        },
        results = {
            {type="fluid", name="fi_dirty_water", amount=500},
            {type="item", name="el_energy_crystal_item", amount=50},
            {type="item", name="uranium-238", amount=20},
            {type="item", name="uranium-235", amount=4},
        },
        energy_required = 2,
        always_show_made_in = true
    },


    {
        name = 'fi_arc_pure_gold_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="fi_materials_pure_gold", amount=1},
        },
        results = {
            {type="fluid", name="fi_arc_gold", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_gold_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="fi_arc_gold", amount=100},
        },
        results = {
            {type="item", name="fi_materials_gold", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_arc_pure_titan_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="fi_materials_pure_titan", amount=1},
        },
        results = {
            {type="fluid", name="fi_arc_titan", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_titan_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="fi_arc_titan", amount=100},
        },
        results = {
            {type="item", name="fi_materials_titan", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_arc_pure_neodym_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_arc_furnace_category',
        ingredients = {
            {type="item", name="fi_materials_pure_neodym", amount=1},
        },
        results = {
            {type="fluid", name="fi_arc_neodym", amount=200},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true
    },
    {
        name = 'fi_cast_neodym_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'el_caster_category',
        ingredients = {
            {type="fluid", name="fi_arc_neodym", amount=100},
        },
        results = {
            {type="item", name="fi_materials_neodym", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_compound_machine_recipe',
        type = 'recipe',
        enabled = 'false',
        ingredients = {
            {'concrete',60},
            {'el_materials_ALK',60},
            {'iron-gear-wheel',40},
            {'electric-engine-unit',15},
            {'el_energy_crystal_item',20},
        },
        result = 'fi_compound_machine_item',
        result_count = 1,
        energy_required = 4,
    },
    {
        name = 'fi_NFK_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_compound_machine_category',
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=10},
            {type="item", name="fi_materials_natural_fiber", amount=1},
            {type="item", name="plastic-bar", amount=1},
        },
        results = {
            {type="item", name="fi_materials_NFK", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_GFK_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_compound_machine_category',
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=10},
            {type="item", name="fi_materials_glass_fiber", amount=1},
            {type="item", name="plastic-bar", amount=1},
        },
        results = {
            {type="item", name="fi_materials_GFK", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
        always_show_made_in = true,
    },
    {
        name = 'fi_pure_neodym_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_pure_neodym',
        ingredients = {
            {type="fluid", name="fi_dirty_water", amount=200},
        },
        results = {
            {type="fluid", name="water", amount=200},
            --{type="item", name="fi_materials_pure_gold", amount=2},
            {type="item", name="fi_materials_pure_neodym", amount=1},
            --{type="item", name="fi_materials_pure_titan", amount=2},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_pure_gold_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_pure_gold',
        ingredients = {
            {type="fluid", name="fi_dirty_water", amount=200},
        },
        results = {
            {type="fluid", name="water", amount=200},
            {type="item", name="fi_materials_pure_gold", amount=2},
            --{type="item", name="fi_materials_pure_neodym", amount=4},
            --{type="item", name="fi_materials_pure_titan", amount=2},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_pure_titan_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'crafting-with-fluid',
        main_product = 'fi_materials_pure_titan',
        ingredients = {
            {type="fluid", name="fi_dirty_water", amount=200},
        },
        results = {
            {type="fluid", name="water", amount=200},
            --{type="item", name="fi_materials_pure_gold", amount=2},
            --{type="item", name="fi_materials_pure_neodym", amount=4},
            {type="item", name="fi_materials_pure_titan", amount=1},
        },
        energy_required = 0.2,
        order = 'a-b',
    },
    {
        name = 'fi_decay_waste_recipe',
        type = 'recipe',
        enabled = 'false',
        category = 'fi_castor_category',
        icon = sprite('fission/fi_materials/fi_materials_waste.png'),
        icon_size = 64,
        subgroup = 'fi_item_subgroup_a',
        ingredients = {
            {type="item", name="fi_materials_waste", amount=1},
        },
        results = {},
        energy_required = 150,
        order = 'a-b',
    },
})