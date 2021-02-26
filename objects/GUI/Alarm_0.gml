/// @description Insert description here
// You can write your code in this editor
var _items = global.items;
var length = array_length(_items);
for(var a = 0; a < length; a++){
	with(_items[a])
		array_pop(global.items);
}