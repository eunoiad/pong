extends Control

func _ready():
	update_button_labels($Player1InputMap/Up, InputMap.action_get_events("player1_up")[0].as_text())
	update_button_labels($Player1InputMap/Down, InputMap.action_get_events("player1_down")[0].as_text())
	update_button_labels($Player2inputMap/Up, InputMap.action_get_events("player2_up")[0].as_text())
	update_button_labels($Player2inputMap/Down, InputMap.action_get_events("player2_down")[0].as_text())
	request_ready()


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		get_viewport().set_input_as_handled()
		queue_free()

func _on_close_button_down():
	queue_free()


func update_button_labels(button, label: String):
	button.text = str(label)


#PLAYER 1
func _player1_up():
	var inputscreen = load("res://Option Menu/wait_for_input.tscn").instantiate()
	inputscreen.event_to_change = "player1_up"
	add_child(inputscreen)
	await $WaitForInput.new_key
	update_button_labels($Player1InputMap/Up, InputMap.action_get_events("player1_up")[0].as_text())



func _player1_down():
	var inputscreen = load("res://Option Menu/wait_for_input.tscn").instantiate()
	inputscreen.event_to_change = "player1_down"
	add_child(inputscreen)
	await $WaitForInput.new_key
	update_button_labels($Player1InputMap/Down, InputMap.action_get_events("player1_down")[0].as_text())



#PLAYER 2
func _player2_up():
	var inputscreen = load("res://Option Menu/wait_for_input.tscn").instantiate()
	inputscreen.event_to_change = "player2_up"
	add_child(inputscreen)
	await $WaitForInput.new_key
	update_button_labels($Player2inputMap/Up, InputMap.action_get_events("player2_up")[0].as_text())


func _player2_down():
	var inputscreen = load("res://Option Menu/wait_for_input.tscn").instantiate()
	inputscreen.event_to_change = "player2_down"
	add_child(inputscreen)
	await $WaitForInput.new_key
	update_button_labels($Player2inputMap/Down, InputMap.action_get_events("player2_down")[0].as_text())
