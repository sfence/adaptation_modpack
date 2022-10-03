
local farming_mod = "farming"
if minetest.get_modpath("hades_extrafarming") then
  farming-mod = "hades_extrafarming"
end

adaptation_lib.add_item("hemp_fibre", {
    name = farming_mod..":hemp_fibre"
  })
adaptation_lib.add_item("hemp_rope", {
    name = farming_mod..":hemp_rope"
  })

