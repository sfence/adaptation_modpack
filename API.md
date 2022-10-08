# Adaptation lib API

## Manupulate items API

### `adaptation_lib.get_item(variants)`

* return first found key item data or nil
* variants - string or array of strings with wanted keys 

### `adaptation_lib.get_items(variants)`

* return all found keys item data or empty array
* variants - string or array of strings with wanted keys 

### `adaptation_lib.add_item(item_keys, item_data, auto_take, take_param, disable_check)`

* Add item to item list
* Metadata of node isn't affected.
* `item_keys` - string or array of strings with key names
* `item_data` - data of item. Field name is required
* `auto_take` - callback or nil, params `auto_take(item_data, def, take_param)`, update `item_data` from registered item definition
* `take_param` - parameters for `auto_take` callback
* `disbale_check` - prevent error log when adding items whithout definition

#### `item_data` table fields

* 'name' - required fiel with registered item name
* `name_craft_replace` - nil or name of empty replace item in craft recipes
* `lists` - optional array of list keys, for add item name
* `tiles` - list of textures, can be `auto_take` by `adaptation_lib.auto_take_tile_sounds` or `adaptation_lib.auto_take_images_sounds` from item definition
* `tile` - first image in `tiles` list
* `inventory_image` - can be `auto_take` by `adaptation_lib.auto_take_images_sounds` from item definition

* `inventory_overlay` - can be `auto_take` by `adaptation_lib.auto_take_images_sounds` from item definition
* `wield_image` - can be `auto_take` by `adaptation_lib.auto_take_images_sounds` from item definition
* `wield_overlay` - can be `auto_take` by `adaptation_lib.auto_take_images_sounds` from item definition
* `sounds` - sounds of item/node, can be `auto_take` by `adaptation_lib.auto_take_tile_sounds` or `adaptation_lib.auto_take_images_sounds` from item definition


### `adaptation_lib.update_item(key, update)`

* Update already registered key item data
* key - key for update
* udpate - update data

## Manupulate list API

### `adaptation_lib.get_list(variants)`

* Return first found list or nil.
* variantas - string or array of string

## Manupulate groups API

### `adaptation_lib.get_group(variants)`

* Return first found group or nil.
* variantas - string or array of string

### `adaptation_lib.add_group(key, group_string)`

* Add group to group list.
* key - string with group key
* `group_string` - group name (like `group:wood`, `group:stick`, `mcl_core:strick` etc.)

## Manupulate mods API

### `adaptation_lib.get_mod(variants)`

* Return first found mod or nil.
* variantas - string or array of string

### `adaptation_lib.add_mod(key, mod_data)`

* Add mod to mod list.
* key - string with mod key
* `mod_data` - table of mod data

## Help functions

Predefined callbacks and etc.

### `adaptation_lib.check_keys_aviable(log_id, where, keys)`

* Check aviable of keys in where table. Return true if all keys is aviable. Print log message for every missing key
* `log_id` - Begining of log message or nil to disable log
* where - table where keys should be
* keys - array of keys for check 


### `adaptation_lib.get_item_name(item_data)`

* Return item name or unknown item string if name is not aviable.
* `item_data` - data of item returned from `adaptation_lib.get_item`

### `adaptation_lib.get_item_name_or_nil(item_data)`

* Return item name or nil.
* `item_data` - data of item returned from `adaptation_lib.get_item`

### `adaptation_lib.get_craft_replacements(finished, unfinished)`

*
* finished - array of item pairs `{recipe_item, replace_item}`
* unfinished - array of `item_data`, replaced by `{item_data.name, item_data.name_craft_replace}` if `name_craft_replace` is aviable.

