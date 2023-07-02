extends Control

var is_paused = false :
	set(value):
		is_paused = value
		get_tree().paused = is_paused
		visible = is_paused


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused


func _on_resume_button_down():
	self.is_paused = !is_paused


func _on_restart_button_down():
	Singleton.clear_score()
	Singleton.set_previous_winner(false)
	get_tree().change_scene_to_file("res://game.tscn")
	self.is_paused = !is_paused


func _on_options_button_down():
	var option_menu = preload("res://Option Menu/option_menu.tscn").instantiate()
	add_child(option_menu)


func _on_quit_button_down():
	get_tree().quit()


func _on_main_menu_button_down():
	self.is_paused = !is_paused
	get_tree().change_scene_to_file("res://menu.tscn")
