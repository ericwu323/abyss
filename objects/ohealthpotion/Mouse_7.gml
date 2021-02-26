/// @description Insert description here
// You can write your code in this editor
if(clickable){
	if(mouse_x >= lbox and mouse_x <= rbox and
	   mouse_y >= tbox and mouse_y <= bbox){
		   
		   global.PlayerHealth = global.PlayerHealthMax;
		   
		   instance_destroy();
		   
	   }
}