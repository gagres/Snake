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
	Start = rm_start,
	Score = rm_score,
	Game = rm_game,
}

function start_game ()
{
	room_goto(Rooms.Game);
}

function go_to_start()
{
	room_goto(Rooms.Start);
}

function go_to_score ()
{
	room_goto(Rooms.Score);
}