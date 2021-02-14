 
// You can write your code in this editor
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}
x+= (xTo - x) / 25;
y+= (yTo - y) / 25;

x = clamp(x,view_w_half,room_width - view_w_half);
y = clamp(y,view_h_half,room_height - view_h_half);
 
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
if(layer_exists("Backgrounds_3"))
{
	layer_x("Backgrounds_3",x/2000);
	layer_x("Backgrounds_4",x/2000);
	layer_x("Backgrounds_5",x/2000);
	layer_x("Backgrounds_6",x/30);
	layer_x("Backgrounds_7",x/30);
	layer_x("Backgrounds_8",x/30);
	layer_x("Backgrounds_9",x/40);
	layer_x("Backgrounds_11",x/50);
}
