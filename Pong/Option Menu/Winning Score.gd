extends HScrollBar

func _ready():
	set_value(Singleton.winning_score)
	if Singleton.paddle1_score > Singleton.paddle2_score:
		set_min(Singleton.paddle1_score + 1)
	else:
		set_min(Singleton.paddle2_score + 1)
	request_ready()

func _value_changed(new_value):
	$Label.text = str(new_value)
	Singleton.set_winning_score(new_value)
