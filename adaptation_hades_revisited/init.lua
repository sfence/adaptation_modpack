
local modpath = minetest.get_modpath(minetest.get_current_modname())

if minetest.get_modpath("hades_core") then
  dofile(modpath.."/core.lua")
end
