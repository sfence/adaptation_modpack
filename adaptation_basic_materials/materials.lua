
adaptation_lib.add_item("strip_plastic", {
    name = "basic_materials:plastic_strip",
  })
adaptation_lib.add_item("strip_steel", {
    name = "basic_materials:steel_strip",
  })
adaptation_lib.add_item("strip_copper", {
    name = "basic_materials:copper_strip",
  })
adaptation_lib.add_item("bar_steel", {
    name = "basic_materials:steel_bar",
  })
adaptation_lib.add_item("wire_steel", {
    name = "basic_materials:steel_wire",
  })
adaptation_lib.add_item("wire_copper", {
    name = "basic_materials:copper_wire",
  })
adaptation_lib.add_item("wire_gold", {
    name = "basic_materials:gold_wire",
  })
adaptation_lib.add_item("spool_empty", {
    name = "basic_materials:empty_spool",
  })
adaptation_lib.add_item("integrated_circuit", {
    name = "basic_materials:ic",
  })
adaptation_lib.add_item("gear_steel", {
    name = "basic_materials:gear_steel",
  })
adaptation_lib.add_item("motor_electric", {
    name = "basic_materials:motor",
  })

if (not minetest.get_modpath("hades_materials")) then
  adaptation_lib.add_item("sheet_plastic", {
      name = "basic_materials:plastic_sheet",
    })
  adaptation_lib.add_item("paraffin", {
      name = "basic_materials:paraffin",
    })
  adaptation_lib.add_item("silicon", {
      name = "basic_materials:silicon",
    })
end

if minetest.get_modpath("technic") or minetest.get_modpath("hades_technic") then
  adaptation_lib.add_item("wire_stainless_steel", {
      name = "basic_materials:stainless_steel_wire",
    })
  adaptation_lib.add_item("bar_carbon_steel", {
      name = "basic_materials:carbon_steel_bar",
    })
end
