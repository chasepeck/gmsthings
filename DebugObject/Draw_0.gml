draw_set_font(consoleFont);
draw_set_color(textColor);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text_transformed(x,y,text,2,2,0);
draw_set_color(historyColor);

var ii=0;
for(i=array_length(history);i>0;i--;){
	ii++;
	draw_text_transformed(x,y+(ii)*30,history[i-1],2,2,0);
}

if(global.debuginfo){
	draw_set_font(infoFont);
	draw_set_color(textColor);
	draw_text(30,1050,"FPS: "+string(ceil(fpscalc)));
}