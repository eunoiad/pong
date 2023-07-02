extends HScrollBar

func _ready():
	set_value(Singleton.score_fade_time)
	request_ready()

func _value_changed(new_value):
	$Label.text = str(new_value)
	Singleton.set_score_fade_time(new_value)
	
