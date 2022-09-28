
local modpath = minetest.get_modpath(minetest.get_current_modname())

if minetest.get_modpath("mesecons_materials") or minetest.get_modpath("mesecons_materials") then
 dofile(modpath.."/materials.lua")
end

if minetest.get_modpath("mesecons_???") then
 dofile(modpath.."/???.lua")
end

