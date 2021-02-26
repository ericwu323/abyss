/// @description Insert description here
// You can write your code in this editor
//globalvar PlayerHealthMax; 
global.PlayerHealthMax = 10;
//globalvar PlayerHealth; 
global.PlayerHealth = 10;
global.Coins = 0;
global.items = array_create(0,0);
global.PlayerAttack = 1;
cam = view_camera[0];
view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam) * 0.05;