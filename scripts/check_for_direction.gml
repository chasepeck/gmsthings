///@arg direction
function check_for_direction(argument0) {

	switch(argument0){
		case "u":
			if(gamepad_axis_value(0,gp_axislv)<=-0.5)return true;
			if(gamepad_button_check(0,gp_padu))return true;
			if(keyboard_check(vk_up))return true;
		break;
	
		case "d":
			if(gamepad_axis_value(0,gp_axislv)>=0.5)return true;
			if(gamepad_button_check(0,gp_padd))return true;
			if(keyboard_check(vk_down))return true;
		break;
	
		case "l":
			if(gamepad_axis_value(0,gp_axislh)<=-0.5)return true;
			if(gamepad_button_check(0,gp_padl))return true;
			if(keyboard_check(vk_left))return true;
		break;
	
		case "r":
			if(gamepad_axis_value(0,gp_axislh)>=0.5)return true;
			if(gamepad_button_check(0,gp_padr))return true;
			if(keyboard_check(vk_right))return true;
		break;
	}


}
