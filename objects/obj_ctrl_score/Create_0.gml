/// @description Insert description here
// You can write your code in this editor

_score = 0;
best_score = 0;
score_file = "score"
section = "player"
key = "best_score"

/// @method add(int points)
add = function (points)
{
	_score += points;
}

save = function ()
{
	if (_score <= best_score) return;
	ini_open(score_file);
	ini_write_real(section, key, _score);
	ini_close();
}

get_best_score = function ()
{
	ini_open(score_file);
	best_score = ini_read_real(section, key, 0);
	ini_close();
}

get_best_score();