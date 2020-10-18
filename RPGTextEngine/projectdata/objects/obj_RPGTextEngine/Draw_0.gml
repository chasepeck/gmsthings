//Uncomment the line below and replace FONT with a MONOSPACE font!
//draw_set_font(FONT);
draw_set_font(fnt_basic);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var i;
for(i=0;i<array_length_1d(characters);i++;){
	switch(textstyle){
		case 0: //Normal
		draw_text(x+characterx[i],y+charactery[i],characters[i]);
		break;
		
		case 1: //Shaky
		draw_text(x+characterx[i]+random_range(0,2),y+charactery[i]+random_range(0,2),characters[i]);
		break;
	}
}