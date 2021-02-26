/// @description Insert description here
// You can write your code in this editor
if(use){
	
	global.PlayerHealth += 4;
	if(global.PlayerHealth > global.PlayerHealthMax){
		global.PlayerHealth = global.PlayerHealthMax;
	with(Inventory){
		array_delete(global.useableitems,a,1);
		array_delete(global.items,a,1);
		if(a != 0)
			a--;
	}
	instance_destroy();
}