extends TextureProgressBar


func _ready():
	await get_tree().process_frame
	value = get_parent().hp
	max_value = get_parent().hp_max

func animate_hp_change(new_hp: int, old_hp: int = value):
	var	tween = get_tree().create_tween()
	tween.tween_property(self, "value", new_hp, 0.1).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT).set_delay(0.025)
	tween.play()
