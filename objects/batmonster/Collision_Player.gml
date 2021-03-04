/// @description Insert description here
// You can write your code in this editor
if(Player.state != PLAYERSTATE.CROUCH){
	if(Player.invuln == 0){
		PlayerHit(2);
		Player.invuln = 60;
	}
}