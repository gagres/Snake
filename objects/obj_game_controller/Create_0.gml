/// @description Insert description here
// You can write your code in this editor

end_game = function () {
	if (instance_exists(obj_snake)) obj_snake.stop_movement();
	if (instance_exists(obj_score_controller)) obj_score_controller.save();
}