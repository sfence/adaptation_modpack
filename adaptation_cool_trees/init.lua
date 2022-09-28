
local modpath = minetest.get_modpath(minetest.get_current_modname())

local trees = {"baldcypress", "birch", "cherrytree", "clementinetree", "ebony",     "hollytree", "larch", "lemontree", "mahogany", "maple", "oak", "palm", "plumtree", "pomegranate", "willow"}

if minetest.get_modpath("bamboo") or minetest.get_modpath("hades_bamboo") then
  adaptation_lib.add_item("wood_bamboo", {
      name = "bamboo:wood",
      tiles = {"bamboo_wood.png"},
      tile = "bamboo_wood.png",
      lists={"wood"},
    })
end

for _, tree in pairs(trees) do
  if minetest.get_modpath(tree) or minetest.get_modpath("hades_"..tree) then
    adaptation_lib.add_item("wood_"..tree, {
        name = tree..":wood",
        tiles = {tree.."_wood.png"},
        tile = tree.."_wood.png",
        lists={"wood"},
      })
    adaptation_lib.add_item("tree_"..tree, {
        name = tree..":tree",
        lists={"tree"},
      })
  end
end

