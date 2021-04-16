extends Button

func _on_Button_mouse_entered():
	$Sprite.modulate.r = 0.5
	$Sprite.modulate.g = 0.5
	$Sprite.modulate.b = 0.5
	$Sprite2.modulate.r = 0.5
	$Sprite2.modulate.g = 0.5
	$Sprite2.modulate.b = 0.5
	pass # Replace with function body.


func _on_Button_mouse_exited():
	
	$Sprite.modulate.r = 1
	$Sprite.modulate.g = 1
	$Sprite.modulate.b = 1
	
	$Sprite2.modulate.r = 1
	$Sprite2.modulate.g = 1
	$Sprite2.modulate.b = 1
pass # Replace with function body.

func _on_Button_pressed():
	$Sprite.modulate.r = 0.3
	$Sprite.modulate.g = 0.3
	$Sprite.modulate.b = 0.3
	
	$Sprite2.modulate.r = 0.3
	$Sprite2.modulate.g = 0.3
	$Sprite2.modulate.b = 0.3
	get_tree().quit()
	pass # Replace with function body.


	
