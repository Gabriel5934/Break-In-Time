extends Button

func _on_start_mouse_entered():
	$Sprite.modulate.r = 0.5
	$Sprite.modulate.g = 0.5
	$Sprite.modulate.b = 0.5
	pass # Replace with function body.


func _on_start_mouse_exited():
	pass # Replace with function body.
	$Sprite.modulate.r = 1
	$Sprite.modulate.g = 1
	$Sprite.modulate.b = 1


func _on_start_pressed():
	$Sprite.modulate.r = 0.3
	$Sprite.modulate.g = 0.3
	$Sprite.modulate.b = 0.3
	get_tree().change_scene("res://scenes/Map.tscn")
	pass # Replace with function body.
