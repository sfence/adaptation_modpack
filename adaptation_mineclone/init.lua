
local modpath = minetest.get_modpath(minetest.get_current_modname())

if minetest.get_modpath("mcl_core") then
  dofile(modpath.."/core.lua")
end

if minetest.get_modpath("mcl_dye") then
  dofile(modpath.."/dye.lua")
end

if minetest.get_modpath("mcl_wool") then
  dofile(modpath.."/wool.lua")
end

if minetest.get_modpath("mcl_buckets") then
  dofile(modpath.."/buckets.lua")
end


if minetest.get_modpath("mcl_stairs") then
  dofile(modpath.."/stairs.lua")
end

if minetest.get_modpath("mcl_player") then
  dofile(modpath.."/player.lua")
end


if minetest.get_modpath("mcl_core") then
  dofile(modpath.."/groups.lua")
end

