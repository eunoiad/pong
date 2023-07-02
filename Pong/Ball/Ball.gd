extends RigidBody2D

@export var initial_angle_max := 10
@export var initial_speed := 4

func start():
	var initial_angle = randomize_dir(Singleton.previous_winner)
	apply_central_impulse(initial_angle*initial_speed)


func _on_body_exited(body: Paddle):
	if body == null:
		return
	else:
		increase_speed(0.1)


func increase_speed(percent):
	if linear_velocity.length_squared() <= 800000.0:
		apply_central_impulse(linear_velocity.normalized()*percent)


func randomize_dir(paddle1):
	var max_angle_rad = (PI/180)*initial_angle_max
	var angle
	if paddle1:
		angle = randf_range(-max_angle_rad, max_angle_rad)
	else:
		angle = randf_range(-max_angle_rad, max_angle_rad) + PI
	var initial_angle = Vector2(cos(angle), sin(angle))
	
	return initial_angle


func _on_game_start_round():
	start()
