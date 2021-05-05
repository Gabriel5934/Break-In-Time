extends Button



func _on_WrongButton_mouse_entered():

	$RightSprite.modulate.r = 0.5
	$RightSprite.modulate.g = 0.5
	$RightSprite.modulate.b = 0.5


func _on_WrongButton_mouse_exited():
	$RightSprite.modulate.r = 1
	$RightSprite.modulate.g = 1
	$RightSprite.modulate.b = 1


func _on_WrongButton_pressed():
	$RightSprite.modulate.r = 0.7
	$RightSprite.modulate.g = 0.7
	$RightSprite.modulate.b = 0.7
	
	get_tree().quit()
