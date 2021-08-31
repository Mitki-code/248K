--local functions
local function config(name)
    return settings.startup['fu_star_engine_cooler_'..name].value
end

local function sprite(name)
    return '__248k__/ressources/fusion/fu_star_engine/fu_star_engine_cooler/fu_star_engine_cooler_'..name
end

--item
data:extend({
    {
        name = 'fu_star_engine_cooler_item',
        type = 'item',
        icon = sprite('item.png'),
        icon_size = 64,
        place_result = 'fu_star_engine_cooler_entity',
        stack_size = 1,
        subgroup = 'fu_item_subgroup_d-b',
        order = 'b-b',
    },

})

--entity
data:extend({
    --prototype
    {
        name = 'fu_star_engine_cooler_entity',
        type = 'assembling-machine',
        icon = sprite('entity_icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral","not-rotatable"},
        max_health = 300,
        corpse = 'big-remnants',
        collision_box = {{-6.5,-10.5},{6.5,10.5}},
        selection_box = {{-6.5,-10.5},{6.5,10.5}},
        map_color = {r=0, g=0, b=1, a=1},
        minable = {
            mining_time = 1,
            result = 'fu_star_engine_cooler_item',
        },
        crafting_categories = {'fu_star_engine_cooler_crafting_category'},
        crafting_speed = 1,
        energy_source = {
          type = 'electric',
          usage_priority = 'secondary-input',
          input_flow_limit = '4GW',
        },
        energy_usage = '0.5GW',
        --fluids
        fluid_boxes = {
            { 
              base_area = 1,
              height = 2,
              base_level = -1,
              
              pipe_connections =
              {
                {type = "input", position = {-4, -11}}
              },
              production_type = "input"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = -1,
              
              pipe_connections =
              {
                {type = "input", position = {4, -11}}
              },
              production_type = "input"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
              
              pipe_connections =
              {
                {type = "output", position = {0, 11}},
              },
              production_type = "output"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
              
              pipe_connections =
              {
                {type = "output", position = {-2, 11}},
              },
              production_type = "output"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
              
              pipe_connections =
              {
                {type = "output", position = {2, 11}},
              },
              production_type = "output"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
              
              pipe_connections =
              {
                {type = "output", position = {-4, 11}},
              },
              production_type = "output"
            },
            { 
              base_area = 1,
              height = 2,
              base_level = 1,
              
              pipe_connections =
              {
                {type = "output", position = {4, 11}},
              },
              production_type = "output"
            },
        },
        --animation
        animation = {
            north = {
                filename = sprite('entity_animation_1.png'),
                size = {600*2,512*2},
                scale = 0.8,
                shift = {5.5,0.5},
                line_length = 1,
                lines_per_file = 1,
                frame_count = 1,
                animation_speed = 0.3,
            },
            east = {
                filename = sprite('entity_animation.png'),
                size = {480,500},
                scale = 0.27,
                line_length = 1,
                frame_count = 1,
                animation_speed = 0.5,
            },
            south = {
                filename = sprite('entity_animation.png'),
                size = {480,500},
                scale = 0.27,
                line_length = 1,
                frame_count = 1,
                animation_speed = 0.5,
            },
            west = {
                filename = sprite('entity_animation.png'),
                size = {480,500},
                scale = 0.27,
                line_length = 1,
                frame_count = 1,
                animation_speed = 0.5,
            },
        },
        
        working_sound = { 
            sound = { filename = '__base__/sound/heat-exchanger.ogg'},
            apparent_volume = 2.5,
        },
    },
})