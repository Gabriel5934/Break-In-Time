extends CanvasLayer

func _ready():
	$PausePanel.hide()

func _on_Resume_pressed():
	$PausePanel/Resume/Sprite.modulate.r = 0.5
	$PausePanel/Resume/Sprite.modulate.g = 0.5
	$PausePanel/Resume/Sprite.modulate.b = 0.5
	
	get_tree().paused = false
	$PausePanel.hide()

func _on_Resume_mouse_entered():
	$PausePanel/Resume/Sprite.modulate.r = 0.7
	$PausePanel/Resume/Sprite.modulate.g = 0.7
	$PausePanel/Resume/Sprite.modulate.b = 0.7

func _on_Resume_mouse_exited():
	$PausePanel/Resume/Sprite.modulate.r = 1
	$PausePanel/Resume/Sprite.modulate.g = 1
	$PausePanel/Resume/Sprite.modulate.b = 1




func _on_Quit_pressed():
	$PausePanel/Quit/Sprite.modulate.r = 0.5
	$PausePanel/Quit/Sprite.modulate.g = 0.5
	$PausePanel/Quit/Sprite.modulate.b = 0.5
	
	get_tree().quit()

func _on_Quit_mouse_entered():
	$PausePanel/Quit/Sprite.modulate.r = 0.7
	$PausePanel/Quit/Sprite.modulate.g = 0.7
	$PausePanel/Quit/Sprite.modulate.b = 0.7


func _on_Quit_mouse_exited():
	$PausePanel/Quit/Sprite.modulate.r = 1
	$PausePanel/Quit/Sprite.modulate.g = 1
	$PausePanel/Quit/Sprite.modulate.b = 1
