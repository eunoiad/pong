extends RigidBody2D
@export var speed := 100

func _init():
	var dir = Vector2(randf(), randf()).normalized()
	apply_central_impulse(dir*speed)


func _on_body_exited(_body):
	increase_speed(10)


func increase_speed(percent):
	if linear_velocity.length_squared() <= 800000.0:
		apply_central_impulse(linear_velocity.normalized()*percent)
