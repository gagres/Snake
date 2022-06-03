/// @description Insert description here
// You can write your code in this editor

menu_options = [
	["JOGAR", start_game],
	["PONTUACAO", go_to_score],
	["SAIR", game_end]
];
menu_options_scale = []
for (var i = 0; i < array_length(menu_options); i++)
{
	menu_options_scale[i] = 1;
}

f_menu = font_add("Fonts/Silver.ttf", 28, false, false, 32, 128);