/// @description Insert description here
// You can write your code in this 
if(show_inventory = false) exit;
if(array_length(global.useableitems) == 0) exit;
instance_create_layer(0,0,layer,global.useableitems[a]);
with(global.useableitems[a])
	use = true;