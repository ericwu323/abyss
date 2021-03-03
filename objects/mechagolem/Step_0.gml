/// @description Insert description here
// You can write your code in this editor
switch (state)
{
	case MECHASTATE.FREE: MechaState_Free(); break;
	case MECHASTATE.MELEE: MechaState_Melee(); break;
	case MECHASTATE.BLOCK: MechaState_Block(); break;
	case MECHASTATE.LASER: MechaState_Laser(); break;
	case MECHASTATE.DIE: MechaState_Die(); break;
}