/// @description Insert description here
// You can write your code in this editor

if (global.midTransition) return;

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

draw_set_font(f_menu);
draw_set_valign(fa_center);
draw_set_halign(fa_middle);

var _wgui = display_get_gui_width() / 2;
var _hgui = display_get_gui_height() / 2 - 50;
var _str_height = string_height("TESTE");
var _str_width = string_width("TESTE");

for (var i = 0; i < array_length(menu_options); i++)
{
	var text = menu_options[i][0];
	var action = menu_options[i][1];
	var x1 = _wgui - _str_width / 2;
	var y1 = _hgui - _str_height / 2 + _str_height * i;
	var x2 = _wgui + _str_width / 2;
	var y2 = _hgui + _str_height / 2 + _str_height * i;
	if (point_in_rectangle(_mx, _my, x1, y1, x2, y2)) {
		menu_options_scale[i] = lerp(menu_options_scale[i], 1.4, 0.1);
		if (mouse_check_button_released(mb_left)) action();
	} else {
		menu_options_scale[i] = lerp(menu_options_scale[i], 1, 0.1);
	}
	draw_text_transformed(_wgui, _hgui + _str_height * i, text, menu_options_scale[i], menu_options_scale[i], 0);
}

draw_set_font(-1)
draw_set_valign(-1);
draw_set_halign(-1);