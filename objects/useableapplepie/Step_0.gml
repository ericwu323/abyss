/// @description Insert description here
// You can write your code in this editor
if(use){
	global.PlayerAttack += 0.5;
	with(Inventory){
		array_delete(global.useableitems,a,1);
		array_delete(global.items,a,1);
		if(a != 0)
			a--;
	}
	instance_destroy();
}