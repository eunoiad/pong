class_name Paddle
extends CharacterBody2D

@export var player_speed := 400
var is_round_started := false

func _ready():
	get_owner().start_round.connect(_on_round_start)

func _on_round_start():
	print("somehow this bullshit works")
	is_round_started = true
