/// @description Insert description here
// You can write your code in this editor

best_score = 0;
f_score = font_add("Fonts/Silver.ttf", 35, false, false, 32, 128);
f_best_score = font_add("Fonts/Silver.ttf", 12, false, false, 32, 128);


function get_best_score()
{
	if (instance_exists(obj_ctrl_score)) {
		best_score = obj_ctrl_score.get_best_score();
	}
}

get_best_score();