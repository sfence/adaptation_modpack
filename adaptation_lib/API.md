# Adaptation lib API

## Main API functions

### `appliances.get_item(variants)`

# return first found key item data or nil
# variants - string or array of strings with wanted keys 

### `appliances.get_items(variants)`

# return all found keys item data or empty array
# variants - string or array of strings with wanted keys 

### `appliances.add_item(item_keys, item_data, auto_take, take_param, disable_check)`

* Add item to item list
* Metadata of node isn't affected.
* `item_keys` - string or array of strings with key names
* `item_data` - data of item. Field name is required
* `auto_take` - callback or nil, params `auto_take(item_data, def, take_param)`, update `item_data` from registered item definition
* `take_param` - parameters for `auto_take` callback
* `disbale_check` - prevent error log when adding items whithout definition

### `appliances.update_item(key, update)`

* Update already registered key item data
* key - key for update
* udpate - update data

## Help functions

Predefined callbacks and etc.


