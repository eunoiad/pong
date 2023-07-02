extends Control

func _ready():
	$VBoxContainer/Start.grab_focus()


func _on_start_button_down():
	get_tree().change_scene_to_file("res://game.tscn")


func _on_options_button_down():
	var option_menu = preload("res://Option Menu/option_menu.tscn").instantiate()
	add_child(option_menu)


func _on_quit_button_down():
	get_tree().quit()
