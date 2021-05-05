extends Button


func _on_RightButton_mouse_entered():
	
	$RightSprite.modulate.r = 0.5
	$RightSprite.modulate.g = 0.5
	$RightSprite.modulate.b = 0.5



func _on_RightButton_mouse_exited():
	$RightSprite.modulate.r = 1
	$RightSprite.modulate.g = 1
	$RightSprite.modulate.b = 1



func _on_RightButton_pressed():
	$RightSprite.modulate.r = 0.7
	$RightSprite.modulate.g = 0.7
	$RightSprite.modulate.b = 0.7
	
	print("aaaaaaaaaaaaa")
	get_tree().quit()
	
