extends Node2D

signal start_round

func _ready():
	$GUI/Overlay.update_countdown(3)
	await get_tree().create_timer(1.0, false, true).timeout
	$GUI/Overlay.update_countdown(2)
	await get_tree().create_timer(1.0, false, true).timeout
	$GUI/Overlay.update_countdown(1)
	await get_tree().create_timer(1.0, false, true).timeout
	start_round.emit()

func _on_scorer_area_entered(area: Score):
	if area == null:
		return
	else:
		Singleton.set_previous_winner(area.paddle)
		Singleton.increment_player_score(area.paddle)
		if Singleton.paddle1_score >= Singleton.winning_score or Singleton.paddle2_score >= Singleton.winning_score:
			Singleton.set_previous_winner(false)
			get_tree().change_scene_to_file("res://Win Scene/win_scene.tscn")
		else:
			get_tree().change_scene_to_file("res://game.tscn")

