if(onchar<string_length(toprint)+1){
	if(delay==0){
		var char = string_char_at(toprint,onchar);
		
		//Newline
		if(char=="`"){
			textX=0;
			textY+=fixedwidth+20;
			characters[onchar-1] = "";
			characterx[onchar-1] = textX;
			charactery[onchar-1] = textY;
			onchar++;
			delay=2;
		}
		else{
		//Non-newline
		characters[onchar-1] = char;
		characterx[onchar-1] = textX;
		charactery[onchar-1] = textY;
		
		onchar++;
		
		if(char=="!" or char=="?" or char=="." or char==","){
			delay=20;
		}
		else{
			delay=2;
		}
		if(char!=" "){
			//Uncomment the line below and replace SOUND with the sound of your choice
			//audio_play_sound(SOUND,0,false);
		}
		textX+=fixedwidth;
		
		}
	}
	delay--;
}