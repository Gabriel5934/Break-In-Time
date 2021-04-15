extends CanvasLayer

func _ready():
	$PausePanel.hide()

func _on_Resume_pressed():
	get_tree().paused = false
	$PausePanel.hide()

func _on_Quit_pressed():
	get_tree().quit()
