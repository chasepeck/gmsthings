timer = (timer+1)&15
//FPS Timer
if(timer==15)fpscalc=string(ceil(fps_real));

if(typeenable){
	
//Type
if(keyboard_check(vk_anykey) and !keyboard_check(vk_backspace) and !keyboard_check(vk_enter)) {
	text = text+string(keyboard_string);
	keyboard_string = "";
}

//Sound
if(keyboard_check_pressed(vk_anykey)){
	audio_sound_pitch(typeSound,random_range(0.5,1.5));
	audio_play_sound(typeSound,0,false);
}

//Delete
if(keyboard_check_pressed(vk_backspace)) {
	text = string_delete(text,string_length(text),1);	
	keyboard_string = "";
}

//History
if(keyboard_check_pressed(vk_up)) {
	text=history[array_length(history)-1];
}

//Commands
if(keyboard_check_pressed(vk_enter)) {
	if(string_pos("RM:",text)!=0)
		room_goto(asset_get_index(string_replace(text,"RM:","")));
	
	if(string_pos("AUD:",text)!=0){
		audio_stop_all();
		audio_play_sound(asset_get_index(string_replace(text,"AUD:","")),0,false);
	}
	
	if(string_pos("OBJ:",text)!=0)
		instance_create_depth(x,y,0,asset_get_index(string_replace(text,"OBJ:","")));
		
	switch(text){
		case "#ClearHistory":
		history=[];
		break;
		
		case "#ExportHistory":
		var file = file_text_open_write("debug_export/debugExport_"+string(get_timer()/1000000)+".txt");
		for(i=array_length(history);i>0;i--;){
			file_text_write_string(file,history[i-1]+"\n");
		}
		file_text_close(file);
		break;
		
		case "#ToggleDebugInfo":
		global.debuginfo = global.debuginfo ^ 1;
		audio_debug(false);
		show_debug_overlay(global.debuginfo);
		break;
		
		case "#ToggleAudioDebugInfo":
		global.debuginfo = global.debuginfo ^ 1;
		show_debug_overlay(false);
		audio_debug(global.debuginfo);
		break;
	}
	if(text!="#ClearHistory") history[array_length(history)]=text;
	text="";
	keyboard_string="";
}

}

//Enable/disable console
if(keyboard_check_pressed(vk_f3)){
	keyboard_string="";
	typeenable = typeenable ^ 1;
}