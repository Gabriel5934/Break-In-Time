extends CanvasLayer

signal try_again

func _ready():
	$LostPanel.hide()

func _on_TryAgain_pressed():
	get_tree().paused = false
	$LostPanel.hide()
	emit_signal("try_again")

	$LostPanel/TryAgain/Sprite.modulate.r = 0.5
	$LostPanel/TryAgain/Sprite.modulate.g = 0.5
	$LostPanel/TryAgain/Sprite.modulate.b = 0.5

func _on_TryAgain_mouse_entered():
	$LostPanel/TryAgain/Sprite.modulate.r = 0.7
	$LostPanel/TryAgain/Sprite.modulate.g = 0.7
	$LostPanel/TryAgain/Sprite.modulate.b = 0.7
	
func _on_TryAgain_mouse_exited():
	$LostPanel/TryAgain/Sprite.modulate.r = 1
	$LostPanel/TryAgain/Sprite.modulate.g = 1
	$LostPanel/TryAgain/Sprite.modulate.b = 1

func _on_Quit_pressed():
	
	$LostPanel/Quit/Sprite.modulate.r = 0.5
	$LostPanel/Quit/Sprite.modulate.g = 0.5
	$LostPanel/Quit/Sprite.modulate.b = 0.5
	
	get_tree().quit()

func _on_Quit_mouse_entered():

	$LostPanel/Quit/Sprite.modulate.r = 0.7
	$LostPanel/Quit/Sprite.modulate.g = 0.7
	$LostPanel/Quit/Sprite.modulate.b = 0.7

func _on_Quit_mouse_exited():

	$LostPanel/Quit/Sprite.modulate.r = 1
	$LostPanel/Quit/Sprite.modulate.g = 1
	$LostPanel/Quit/Sprite.modulate.b = 1
