extends Control

func _ready():
	$"Player 1".text = "Score: " + str(Singleton.paddle1_score)
	$"Player 2".text = "Score: " + str(Singleton.paddle2_score)
	$Countdown.hide()
	await get_tree().create_timer(Singleton.score_fade_time + 3.0, false, true).timeout
	var tween = get_tree().create_tween()
	tween.parallel().tween_property($"Player 1", "modulate", Color.hex(00000000), 1).set_trans(Tween.TRANS_SINE)
	tween.parallel().tween_property($"Player 2", "modulate", Color.hex(00000000), 1).set_trans(Tween.TRANS_SINE)
	tween.tween_callback($"Player 1".queue_free)
	tween.tween_callback($"Player 2".queue_free)
	#idk wtf that is but it works

func update_countdown(number):
	$Countdown.text = str(number)
	$Countdown.show()
	await get_tree().create_timer(0.4, false, true).timeout
	$Countdown.hide()
