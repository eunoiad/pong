extends Paddle

func _physics_process(_delta):
	if is_round_started:
		if Input.is_action_pressed("player1_up"):
			set_velocity(Vector2(0, -player_speed))
		elif Input.is_action_pressed("player1_down"):
			set_velocity(Vector2(0, player_speed))
		else:
			set_velocity(Vector2(0, 0))
	
	move_and_slide()
