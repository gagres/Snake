/// @description Insert description here
// You can write your code in this editor

f_score = font_add("Fonts/Silver.ttf", 28, false, false, 32, 128);
f_score_title = font_add("Fonts/Silver.ttf", 38, false, false, 32, 128);
best_score = 0;

title_width = room_width / 2 - 20;
title_alpha = 0;

function get_best_score()
{
	if (instance_exists(obj_ctrl_score)) {
		best_score = obj_ctrl_score.get_best_score();
	}
}

get_best_score();