
-- ITEMS
function adaptation_lib.get_item(variants)
  if (type(variants)=="string") then
    variants = {variants}
  end
  for _,key in pairs(variants) do
    local item_data = adaptation_lib.items[key]
    if item_data then
      return item_data
    end
  end
  return nil
end

function adaptation_lib.get_items(variants)
  if (type(variants)=="string") then
    variants = {variants}
  end
  local items = {}
  for _,key in pairs(variants) do
    local item_data = adaptation_lib.items[key]
    if item_data then
      items[key] = item_data
    end
  end
  return items
end

function adaptation_lib.add_item(keys, data, auto_take, param, disable_check)
  if (type(keys)=="string") then
    keys = {keys}
  end
  for _,key in pairs(keys) do
    if (not adaptation_lib.items[key]) then
      adaptation_lib.items[key] = data
    else
      minetest.log("error", "[adaptation_lib]: Key "..key.." is already registered (name is "..data.name..").")
    end
  end
  
  if data.lists then
    for _,list in pairs(data.lists) do
      adaptation_lib.lists[list] = adaptation_lib.lists[list] or {}
      
      table.insert(adaptation_lib.lists[list], data.name)
    end
  end
  
  local def = minetest.registered_items[data.name]
  if (not def) and (not disable_check) then
    minetest.log("error", "[adaptation_lib]: Item "..data.name.." definition missing.")
  end
  if auto_take then
    if def then
      auto_take(data, def, param)
    elseif (disable_check) then
      minetest.log("error", "[adaptation_lib]: Callback auto_take failed. Item "..data.name.." definition missing.")
    end
  end
end

function adaptation_lib.update_item(key, update)
  local data = adaptation_lib.items[key]
  if data then
    for key,value in pairs(update) do
      data[key] = value
    end
  end
end

-- LISTS
function adaptation_lib.get_list(variants)
  if (type(variants)=="string") then
    variants = {variants}
  end
  for _,key in pairs(variants) do
    local list = adaptation_lib.lists[key]
    if list then
      return list
    end
  end
  return nil
end

-- GROUPS
function adaptation_lib.get_group(variants)
  if (type(variants)=="string") then
    variants = {variants}
  end
  for _,key in pairs(variants) do
    local group_data = adaptation_lib.groups[key]
    if group_data then
      return group_data
    end
  end
  return nil
end

function adaptation_lib.add_group(key, group_name)
  adaptation_lib.groups[key] = group_name
end

-- MODS
function adaptation_lib.get_mod(variants)
  if (type(variants)=="string") then
    variants = {variants}
  end
  for _,key in pairs(variants) do
    local mod_data = adaptation_lib.mods[key]
    if mod_data then
      return mod_data
    end
  end
  return nil
end

function adaptation_lib.add_mod(key, data)
  adaptation_lib.mods[key] = data
end

-- HELP

function adaptation_lib.check_keys_aviable(log_identificator, where, keys)
  local check = true
  for _,key in pairs(keys) do
    if (not where[key]) then
      minetest.log("error", log_identificator.."key "..key.." is missing.")
      check = false
    end
  end
  return check
end

