/// @description Insert description here
// You can write your code in this editor
if(!show_inventory) exit;
if(array_length(global.items) == 0) exit;

if(keyboard_check_pressed(vk_right) && a < array_length(global.items)-1){
	a++;
}
if(keyboard_check_pressed(vk_left) && a > 0){
	a--;
}
draw_sprite(swhitearrow2,0,62+a*32,145);