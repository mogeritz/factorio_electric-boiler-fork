local technology_boiler = table.deepcopy(data.raw["technology"]["automation"])
local technology_override = {
  name = "electric-boiler",
  prerequisites = {"automation"},
  icon = "__electricboiler_mogeritz__/graphics/icons/technology/electricboiler.png",
  icon_size = 128,
  effects = {
    {
      type = "unlock-recipe",
      recipe = "electric-boiler"
    }
  },

  unit = {
    count = 50,
    ingredients = {{"automation-science-pack", 1}},
    time = 5
  },

  upgrade = true,
  order = "[boiler]-1"
}

for k,v in pairs(technology_override) do
  technology_boiler[k]=v
end

data:extend({technology_boiler})