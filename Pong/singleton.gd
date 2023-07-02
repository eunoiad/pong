extends Node

#SETTINGS
var winning_score := 10
var score_fade_time := 6.0 #how long it takes for the scores to fade from view in a round

func set_winning_score(num: int):
	winning_score = num
	print("winning score: " + str(winning_score))

func set_score_fade_time(num: int):
	score_fade_time = num

#GAME:
var paddle1_score := 0
var paddle2_score := 0
#true is player1, false is player2
#false will make the ball go TOWARD player1 
var previous_winner := false

func clear_score():
	paddle1_score = 0
	paddle2_score = 0

func increment_player_score(player: bool):
	if player == true:
		paddle1_score += 1
		print("paddle1 score: " + str(paddle1_score))
	else:
		paddle2_score += 1
		print("paddle2 score: " + str(paddle2_score))

func set_previous_winner(prev_winner: bool):
	previous_winner = prev_winner
