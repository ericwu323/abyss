/// @description Insert description here
// You can write your code in this editor
letters += spd;
text_current = string_copy(text,1,floor(letters));
draw_set_font(fsign);
if(h == 0) h = string_height(text);
w = string_width(text_current);

//DESTROY
if(letters>=length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with(oCamera) follow = Player;
}