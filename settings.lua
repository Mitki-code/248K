--el_solar
data:extend({
    --Power Output in W
    {
        name            = 'el_solar_power_output',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 200000,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    {
        name            = 'el_burner_power_output',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 2400000,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    {
        name            = 'el_water_generator_power_output',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 4000000,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    {
        name            = 'el_burner_kerosene_power_output',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 2400000,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    {
        name            = 'fu_burner_power_output',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 3500000,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    --el KI1
    {
        name            = 'el_ki_beacon_effectivity',
        type            = 'double-setting',
        setting_type    = 'startup',
        default_value   = 0.5,
        minimum_value   = 0.1,
        maximum_value   = 10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_beacon_effectivity_2',
        type            = 'double-setting',
        setting_type    = 'startup',
        default_value   = 0.5,
        minimum_value   = 0.1,
        maximum_value   = 10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_beacon_effectivity_3',
        type            = 'double-setting',
        setting_type    = 'startup',
        default_value   = 0.5,
        minimum_value   = 0.1,
        maximum_value   = 10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_beacon_supply_area',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 3,
        minimum_value   = 1,
        maximum_value   = 10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_beacon_supply_area_2',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 4,
        minimum_value   = 1,
        maximum_value   = 10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_beacon_supply_area_3',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 5,
        minimum_value   = 1,
        maximum_value   = 10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_beacon_blueprintable',
        type            = 'bool-setting',
        setting_type    = 'startup',
        default_value   = true,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_productivity',
        type            = 'bool-setting',
        setting_type    = 'startup',
        default_value   = true,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_energy_usage',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 20*10^6,
        minimum_value   = 1,
        maximum_value   = 100000000,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_energy_usage_2',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 20*10^7,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_energy_usage_3',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 20*10^8,
        minimum_value   = 1,
        maximum_value   = 10^11,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_energy_usage_input',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 30*10^6,
        minimum_value   = 1,
        maximum_value   = 100000000,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_energy_usage_input_2',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 30*10^7,
        minimum_value   = 1,
        maximum_value   = 10^10,
        order           = 'a',    
    },
    {
        name            = 'el_ki_core_energy_usage_input_3',
        type            = 'int-setting',
        setting_type    = 'startup',
        default_value   = 30*10^8,
        minimum_value   = 1,
        maximum_value   = 10^11,
        order           = 'a',    
    },
    --Recipe enabled
    {
        name            = 'el_solar_recipe_enabled',
        type            = 'bool-setting',
        setting_type    = 'startup',
        default_value   = true,
        order           = 'b',
    },
    --final fixes
    {
        name            = 'override_krastorio_endgame',
        type            = 'bool-setting',
        setting_type    = 'startup',
        default_value   = true,
        order           = 'b',
    },
})