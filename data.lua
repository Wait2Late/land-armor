--data.lua

local landArmor = table.deepcopy(data.raw["armor"]["heavy-armor"]) -- copy the table that defines the heavy armor item into the landArmor variable

landArmor.name = "land-armor"
landArmor.icons =
{
  {
    icon = landArmor.icon,
    icon_size = landArmor.icon_size,
    tint = { r = 1, g = 0, b = 0, a = 0.3 }
  },
}

landArmor.resistances =
{
  {
    type = "physical",
    decrease = 0,
    percent = 10
  },
  {
    type = "explosion",
    decrease = 0,
    percent = 30
  },
  {
    type = "acid",
    decrease = 0,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}

-- create the recipe prototype from scratch
local recipe =
{
  type = "recipe",
  name = "land-armor",
  enabled = true,
  energy_required = 2, -- time to craft in seconds (at crafting speed 1)
  ingredients = { "steel-plate", 5 },
  result = "land-armor"
}

data:extend { landArmor, recipe }
