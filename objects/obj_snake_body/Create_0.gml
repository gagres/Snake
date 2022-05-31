/// @description Insert description here
// You can write your code in this editor

next_part = noone;
move_to = Directions.right;

move = function (to_x, to_y)
{
	var last_x = x;
	var last_y = y;
	x = to_x;
	y = to_y;
	image_angle = point_direction(last_x, last_y, to_x, to_y);
	if (instance_exists(next_part)) next_part.move(last_x, last_y);
}