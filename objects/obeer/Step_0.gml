/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button(mb_left) && clickable){
	if(mouse_x >= lbox and mouse_x <= rbox and
	   mouse_y >= tbox and mouse_y <= bbox){
		   //global.PlayerHealth += 0.03;
		   array_delete(global.items,arrayposition,1);
		   instance_destroy();
		   
	   }
}