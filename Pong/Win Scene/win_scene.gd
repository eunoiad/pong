extends Control

func _ready():
	print(str(Singleton.paddle1_score) + " " + str(Singleton.paddle2_score))
	if Singleton.paddle1_score > Singleton.paddle2_score:
		$Label.text = "PLAYER 1 WINS"
	else:
		$Label.text = "PLAYER 2 WINS"
	request_ready()

func _on_quit_button_down():
	get_tree().quit()


func _on_main_menu_button_down():
	Singleton.clear_score()
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_play_again_button_down():
	Singleton.clear_score()
	get_tree().change_scene_to_file("res://game.tscn")
