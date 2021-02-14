/// @description Insert description here
// You can write your code in this editor
if(faceRight = false)
	instance_create_depth(Player.x-60, Player.y, depth-1, HB);
else
	instance_create_depth(Player.x+10, Player.y, depth-1, HB);