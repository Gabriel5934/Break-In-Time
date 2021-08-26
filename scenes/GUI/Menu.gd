extends Node2D

func _on_start_mouse_entered():
	$start/Sprite.modulate.r = 0.5
	$start/Sprite.modulate.g = 0.5
	$start/Sprite.modulate.b = 0.5


func _on_start_mouse_exited():
	$start/Sprite.modulate.r = 1
	$start/Sprite.modulate.g = 1
	$start/Sprite.modulate.b = 1


func _on_start_pressed():
	$start/Sprite.modulate.r = 0.3
	$start/Sprite.modulate.g = 0.3
	$start/Sprite.modulate.b = 0.3
	
	get_tree().change_scene("res://scenes/Map.tscn")

func _on_Button_mouse_entered():
	$Button/Sprite.modulate.r = 0.5
	$Button/Sprite.modulate.g = 0.5
	$Button/Sprite.modulate.b = 0.5
	
	$Button/Sprite2.modulate.r = 0.5
	$Button/Sprite2.modulate.g = 0.5
	$Button/Sprite2.modulate.b = 0.5


func _on_Button_mouse_exited():
	$Button/Sprite.modulate.r = 1
	$Button/Sprite.modulate.g = 1
	$Button/Sprite.modulate.b = 1
	
	$Button/Sprite2.modulate.r = 1
	$Button/Sprite2.modulate.g = 1
	$Button/Sprite2.modulate.b = 1

func _on_Button_pressed():
	$Button/Sprite.modulate.r = 0.3
	$Button/Sprite.modulate.g = 0.3
	$Button/Sprite.modulate.b = 0.3
	
	$Button/Sprite2.modulate.r = 0.3
	$Button/Sprite2.modulate.g = 0.3
	$Button/Sprite2.modulate.b = 0.3
	
	get_tree().quit()
