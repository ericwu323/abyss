/// @description Insert description here
// You can write your code in this editor
draw_text(670,24,"Old MechaGolem");
draw_sprite(shealthbar,0,670,60);
draw_sprite_stretched(shealthsliver,0,305,46,min((mechagolem.hp / 120) * 745 , 745), 28);