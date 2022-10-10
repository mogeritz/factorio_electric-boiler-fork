if bobmods.power then
  if data.raw["boiler"]["electric-boiler"].name then
    ------------------------------ boiler MK2
    -- itementity
    local entity_boiler_2 = table.deepcopy(data.raw["boiler"]["electric-boiler"])
    local entity_override_2 = {
      name = "electric-boiler-2",
      energy_consumption = "3.6MW",
      target_temperature = 315,
      energy_source =
      {
        type = "electric",
        input_priority = "secondary",
        usage_priority = "secondary-input",
        effectivity = 0.6,
        light_flicker = {
            color = {r = 0.5, g = 1, b = 1, a = 0.5},
            minimum_light_size = 0.1,
            light_intensity_to_size_coefficient = 1
        }
      }
    }

    -- itemtechnology
    local technology_boiler_2 = table.deepcopy(data.raw["technology"]["electric-boiler"])
    local technology_override_2 = {
      name = "electric-boiler-2",
      prerequisites = {"bob-boiler-2","electric-boiler"},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-boiler-2"
        }
      },
      unit = {
        count = 50,
        ingredients = {{"automation-science-pack", 1}},
        time = 5
      },
      upgrade = true,
      order = "[electric-boiler]-2"
    }

    -- itemrecipe
    local recipe_boiler_2 = table.deepcopy(data.raw["recipe"]["electric-boiler"])
    local recipe_override_2 = {
      name = "electric-boiler-2",
      enabled = "false",
      ingredients =
      {
        {"electric-boiler", 1},
        {"advanced-circuit", 5},
      },
      result = "electric-boiler-2"
    }

    -- itemitem
    local item_boiler_2 = table.deepcopy(data.raw["item"]["electric-boiler"])
    local item_override_2 = {
      place_result = "electric-boiler-2",
      name = "electric-boiler-2",
      order = "[electric-boiler]-2"
    }

    -- update values
    for k,v in pairs(entity_override_2) do
      entity_boiler_2[k]=v
    end

    for k,v in pairs(recipe_override_2) do
      recipe_boiler_2[k]=v
    end

    for k,v in pairs(item_override_2) do
      item_boiler_2[k]=v
    end

    for k,v in pairs(technology_override_2) do
      technology_boiler_2[k]=v
    end

    -- place data
    data:extend({entity_boiler_2, recipe_boiler_2, item_boiler_2, technology_boiler_2})

    ------------------------------ boiler MK3
    -- itementity
    local entity_boiler_3 = table.deepcopy(data.raw["boiler"]["electric-boiler"])
    local entity_override_3 = {
      name = "electric-boiler-3",
      energy_consumption = "5.4MW",
      target_temperature = 465,
      energy_source =
      {
          type = "electric",
          input_priority = "secondary",
          usage_priority = "secondary-input",
          effectivity = 0.7,
          light_flicker = {
              color = {r = 0.5, g = 1, b = 1, a = 0.5},
              minimum_light_size = 0.1,
              light_intensity_to_size_coefficient = 1
          }
      }
    }

    -- itemtechnology
    local technology_boiler_3 = table.deepcopy(data.raw["technology"]["electric-boiler"])
    local technology_override_3 = {
      name = "electric-boiler-3",
      prerequisites = {"bob-boiler-3","electric-boiler-2"},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-boiler-3"
        }
      },
      unit = {
        count = 50,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 5
      },
      upgrade = true,
      order = "[electric-boiler]-3"
    }

    -- itemrecipe
    local recipe_boiler_3 = table.deepcopy(data.raw["recipe"]["electric-boiler"])
    local recipe_override_3 = {
      name = "electric-boiler-3",
      enabled = "false",
      ingredients =
      {
        {"electric-boiler-2", 1},
        {"advanced-circuit", 10},
      },
      result = "electric-boiler-3"
    }

    -- itemitem
    local item_boiler_3 = table.deepcopy(data.raw["item"]["electric-boiler"])
    local item_override_3 = {
      place_result = "electric-boiler-3",
      name = "electric-boiler-3",
      order = "[electric-boiler]-3"
    }

    -- update values
    for k,v in pairs(entity_override_3) do
      entity_boiler_3[k]=v
    end

    for k,v in pairs(recipe_override_3) do
      recipe_boiler_3[k]=v
    end

    for k,v in pairs(item_override_3) do
      item_boiler_3[k]=v
    end

    for k,v in pairs(technology_override_3) do
      technology_boiler_3[k]=v
    end

    -- place data
    data:extend({entity_boiler_3, recipe_boiler_3, item_boiler_3, technology_boiler_3})

    ------------------------------ boiler MK4
    -- itementity
    local entity_boiler_4 = table.deepcopy(data.raw["boiler"]["electric-boiler"])
    local entity_override_4 = {
      name = "electric-boiler-4",
      energy_consumption = "7.2MW",
      target_temperature = 615,
      energy_source =
      {
          type = "electric",
          input_priority = "secondary",
          usage_priority = "secondary-input",
          effectivity = 0.8,
          light_flicker = {
              color = {r = 0.5, g = 1, b = 1, a = 0.5},
              minimum_light_size = 0.1,
              light_intensity_to_size_coefficient = 1
          }
      }
    }

    -- itemtechnology
    local technology_boiler_4 = table.deepcopy(data.raw["technology"]["electric-boiler"])
    local technology_override_4 = {
      name = "electric-boiler-4",
      prerequisites = {"bob-boiler-4","electric-boiler-3"},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-boiler-4"
        }
      },
      unit = {
        count = 50,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1}
        },
        time = 5
      },
      upgrade = true,
      order = "[electric-boiler]-4"
    }

    -- itemrecipe
    local recipe_boiler_4 = table.deepcopy(data.raw["recipe"]["electric-boiler"])
    local recipe_override_4 = {
      name = "electric-boiler-4",
      enabled = "false",
      ingredients =
      {
        {"electric-boiler-3", 1},
        {"processing-unit", 5},
      },
      result = "electric-boiler-4"
    }

    -- itemitem
    local item_boiler_4 = table.deepcopy(data.raw["item"]["electric-boiler"])
    local item_override_4 = {
      place_result = "electric-boiler-4",
      name = "electric-boiler-4",
      order = "[electric-boiler]-4"
    }

    -- update values
    for k,v in pairs(entity_override_4) do
      entity_boiler_4[k]=v
    end

    for k,v in pairs(recipe_override_4) do
      recipe_boiler_4[k]=v
    end

    for k,v in pairs(item_override_4) do
      item_boiler_4[k]=v
    end

    for k,v in pairs(technology_override_4) do
      technology_boiler_4[k]=v
    end

    -- place data
    data:extend({entity_boiler_4, recipe_boiler_4, item_boiler_4, technology_boiler_4})

    ------------------------------ boiler MK5
    -- itementity
    local entity_boiler_5 = table.deepcopy(data.raw["boiler"]["electric-boiler"])
    local entity_override_5 = {
      name = "electric-boiler-5",
      energy_consumption = "9MW",
      target_temperature = 765,
      energy_source =
      {
          type = "electric",
          input_priority = "secondary",
          usage_priority = "secondary-input",
          effectivity = 0.9,
          light_flicker = {
              color = {r = 0.5, g = 1, b = 1, a = 0.5},
              minimum_light_size = 0.1,
              light_intensity_to_size_coefficient = 1
          }
      }
    }

    -- itemtechnology
    local technology_boiler_5 = table.deepcopy(data.raw["technology"]["electric-boiler"])
    local technology_override_5 = {
      name = "electric-boiler-5",
      prerequisites = {"bob-boiler-5","electric-boiler-4"},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-boiler-5"
        }
      },
      unit = {
        count = 50,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"production-science-pack", 1}
        },
        time = 5
      },
      upgrade = true,
      order = "[electric-boiler]-5"
    }

    -- itemrecipe
    local recipe_boiler_5 = table.deepcopy(data.raw["recipe"]["electric-boiler"])
    local recipe_override_5 = {
      name = "electric-boiler-5",
      enabled = "false",
      ingredients =
      {
        {"electric-boiler-4", 1},
        {"processing-unit", 10},
      },
      result = "electric-boiler-5"
    }

    -- itemitem
    local item_boiler_5 = table.deepcopy(data.raw["item"]["electric-boiler"])
    local item_override_5 = {
      place_result = "electric-boiler-5",
      name = "electric-boiler-5",
      order = "[electric-boiler]-5"
    }

    -- update values
    for k,v in pairs(entity_override_5) do
      entity_boiler_5[k]=v
    end

    for k,v in pairs(recipe_override_5) do
      recipe_boiler_5[k]=v
    end

    for k,v in pairs(item_override_5) do
      item_boiler_5[k]=v
    end

    for k,v in pairs(technology_override_5) do
      technology_boiler_5[k]=v
    end

    -- place data
    data:extend({entity_boiler_5, recipe_boiler_5, item_boiler_5, technology_boiler_5})
  end
end
