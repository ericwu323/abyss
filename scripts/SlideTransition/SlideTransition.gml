// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SlideTransition(mode1,targetroom){
	with(Transition)
	{
		mode = mode1;
		if(argument_count > 1) target = targetroom;
	}
}