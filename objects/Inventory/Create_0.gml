/// @description Insert description here
// You can write your code in this editor
show_inventory = false;
cam = view_camera[0];
view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
a=0;
global.useableitems = array_create(0,0);