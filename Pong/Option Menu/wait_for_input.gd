extends Control

signal new_key

var event_to_change

func _input(event):
	setkey(event)

func setkey(key):
	if key.is_pressed():
		if key.as_text() == "Escape":
			get_viewport().set_input_as_handled()
			queue_free()
		else:
			InputMap.action_erase_events(event_to_change)
			InputMap.action_add_event(event_to_change, key)
			new_key.emit(key.as_text())
			queue_free()
