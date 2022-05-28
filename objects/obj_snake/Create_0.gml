/// @description Insert description here
// You can write your code in this editor

speed = 1.5;
direction = 0;
body = [];
last_direction = direction;

handle_direction = function ()
{
	last_direction = direction;
	if (keyboard_check_pressed(vk_right)) direction = 0;
	else if (keyboard_check_pressed(vk_up)) direction = 90;
	else if (keyboard_check_pressed(vk_left)) direction = 180;
	else if (keyboard_check_pressed(vk_down)) direction = 270;
	image_angle = direction;
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

draw_body = function ()
{
	// to do
}

fruit_collected = function ()
{
	add_body_part();
}

add_body_part = function ()
{
	var body_part = instance_create_layer(x, y, layer, obj_snake_body);
	array_push(body, body_part);
}