
local modpath = minetest.get_modpath(minetest.get_current_modname())

if minetest.get_modpath("hades_core") then
  dofile(modpath.."/core.lua")
end

if minetest.get_modpath("hades_dye") then
  dofile(modpath.."/dye.lua")
end

if minetest.get_modpath("hades_trees") then
  dofile(modpath.."/trees.lua")
end

if minetest.get_modpath("hades_cloth") then
  dofile(modpath.."/cloth.lua")
end

if minetest.get_modpath("hades_glowcrystals") then
  dofile(modpath.."/glowcrystals.lua")
end

if minetest.get_modpath("hades_materials") then
  dofile(modpath.."/materials.lua")
end

if minetest.get_modpath("hades_farming") then
  dofile(modpath.."/farming.lua")
end

