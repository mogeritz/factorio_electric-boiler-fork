local itemboiler = table.deepcopy(data.raw["item"]["boiler"])
local itemoverride = {
  name = "electric-boiler",
  place_result = "electric-boiler",
  icon_size = 32,
  icon = "__electricboiler_mogeritz__/graphics/icons/electric-boiler.png",
  order = "b[steam-power]-a[electric-boiler-1]"
}

for k,v in pairs(itemoverride) do
  itemboiler[k]=v
end
data:extend({itemboiler})
