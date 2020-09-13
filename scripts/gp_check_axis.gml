///@arg direction
function gp_check_axis(argument0) {

	switch(argument0){
		case "d":
			if(gamepad_axis_value(0,gp_axislv)>=0.5)return true;
		break;
		case "u":
			if(gamepad_axis_value(0,gp_axislv)<=-0.5)return true;
		break;
		case "l":
			if(gamepad_axis_value(0,gp_axislh)<=-0.5)return true;
		break;
		case "r":
			if(gamepad_axis_value(0,gp_axislh)>=0.5)return true;
		break;
	}


}
