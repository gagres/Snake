/// @description Insert description here
// You can write your code in this editor

max_fruits = 1;

end_game = function () {
	if (instance_exists(obj_snake)) obj_snake.stop_movement();
	if (instance_exists(obj_ctrl_score)) obj_ctrl_score.save();
}

create_collectable = function () {
	if (instance_number(obj_cherry) >= max_fruits) return;
	var random_x = irandom_range(0 + 10, room_width - 10);
	var random_y = irandom_range(0 + 10, room_height - 10);
	instance_create_layer(random_x, random_y, "Collectables", obj_cherry);
}