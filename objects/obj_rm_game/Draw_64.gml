/// @description Insert description here
// You can write your code in this editor

if (global.midTransition) return;

draw_set_valign(fa_middle);
draw_set_halign(fa_center);

var _score = 0;
if (instance_exists(obj_ctrl_score))
{
	_score = obj_ctrl_score._score;
}

draw_set_font(f_score);
draw_set_color(c_white);
draw_text(room_width / 2, 30, _score);

draw_set_color(c_grey);
draw_set_font(f_best_score);
draw_set_halign(fa_right);
draw_text(room_width - 20, room_height - 20, "Melhor Pontuação: " + string(best_score));

draw_set_valign(-1);
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(c_white);