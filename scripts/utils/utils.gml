// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

enum Directions
{
	left = 180,
	right = 0,
	up = 90,
	down = 270
}

enum Rooms {
	Start = 0,
	Score = 1,
	Game = 2,
}

function start_game ()
{
	room_goto(Rooms.Game);
}

function go_to_score ()
{
	room_goto(Rooms.Score);
}