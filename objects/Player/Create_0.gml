hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 5;
faceRight = true;
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACK,
	INTERACT
	
}
//downtime = 0;