/// @description Insert description here
// You can write your code in this editor

if (global.midTransition) return;

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_set_valign(fa_center);
draw_set_halign(fa_middle);

draw_set_font(f_score_title);
var title = "Melhor Pontuação"
draw_text(room_width / 2, 50, title);

draw_set_font(f_score);
draw_text(room_width / 2, 100, best_score);

var margin = 20;
var _btn_back_text = "Voltar"
var _wbtn_back = string_width(_btn_back_text) + margin;
var _hbtn_back = string_height(_btn_back_text) + margin / 2;

var _x1 = 20;
var _y1 = display_get_gui_height() - _hbtn_back;
var _x2 = _x1 + _wbtn_back;
var _y2 = display_get_gui_height() - 10;
var _color = c_white;
var _outline = true;

if (point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2)) {
	_outline = false;
	draw_set_color(c_black);
	if (mouse_check_button_released(mb_left)) go_to_start();
} else {
	_outline = true;
	draw_set_color(c_white);
}

draw_rectangle_color(_x1, _y1, _x2, _y2, _color, _color, _color, _color, _outline);
draw_text(_x1 + _wbtn_back / 2, _y1 + _hbtn_back / 2, _btn_back_text);

draw_set_font(-1);
draw_set_color(c_white);