/// @description Insert description here
// You can write your code in this editor
var len = array_length_1d(vars);
surface_set_target(surf);
draw_set_font(fnt_debug);

for(var i = 0; i<len; i++){
	draw_text((2+4),(2+4)+i*16,string_reduce(vars[i], 16));
}

draw_set_font(fnt_base);
surface_reset_target();