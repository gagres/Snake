/// @description Insert description here
// You can write your code in this editor

velocity = sprite_width;
body = [];
move_to = Directions.right;
last_direction = move_to;
direction = move_to;
image_angle = move_to;
delay_move = 0;
last_x = 0;
last_y = 0;
stoped = false;

act = function ()
{
	move();
	handle_change_direction();
	hit_body();
	limit_inside_room();
}

move = function ()
{
	if (delay_move > 0) return;
	last_x = x;
	last_y = y;
	last_direction = move_to;
	switch (move_to)
	{
		case Directions.right:
			x += velocity;
			break;
		case Directions.left:
			x -= velocity;
			break;
		case Directions.up:
			y -= velocity;
			break;
		case Directions.down:
			y += velocity;
			break;
	}
	image_angle = move_to;
	move_body();
	set_delay_move();
}

set_delay_move = function ()
{
	delay_move = room_speed / 4;
}

move_body = function ()
{
	if (array_length(body) == 0) return;
	body[0].move(last_x, last_y);
}

handle_change_direction = function ()
{
	var dir = move_to;
	if (keyboard_check_pressed(vk_right)) dir = Directions.right;
	else if (keyboard_check_pressed(vk_up)) dir = Directions.up;
	else if (keyboard_check_pressed(vk_left)) dir = Directions.left;
	else if (keyboard_check_pressed(vk_down)) dir = Directions.down;
	move_to = handle_inverse_direction(dir);
}

handle_inverse_direction = function (new_direction)
{
	var dir1 = min(last_direction, new_direction);
	var dir2 = max(last_direction, new_direction);
	if ((dir1 == Directions.right && dir2 == Directions.left) ||
		(dir1 == Directions.up && dir2 == Directions.down)) return last_direction;
	return new_direction;
}

hit_body = function()
{
	if (!position_meeting(x, y, obj_snake_body)) return;
	obj_game_controller.end_game();
}

limit_inside_room = function ()
{
	var width = sprite_width;
	if (x < 0 - width) {
		x = room_width + width / 2;
	} else if (x > room_width + width) {
		x = 0 - width / 2;
	}
	
	var height = sprite_height;
	if (y < 0 - height) {
		y = room_height + height / 2;
	} else if (y > room_height + height) {
		y = 0 - height / 2;
	}
}

fruit_collected = function ()
{
	add_body_part();
}

add_body_part = function ()
{
	var body_part = instance_create_layer(-50, -50, layer, obj_snake_body);
	if (array_length(body) > 0) {
		var previous_part = array_get(body, array_length(body) - 1);
		if (instance_exists(previous_part)) previous_part.next_part = body_part;
	}
	array_push(body, body_part);
}

stop_movement = function ()
{
	stoped = true;
}

set_delay_move();