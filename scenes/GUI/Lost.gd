extends CanvasLayer

signal try_again

func _ready():
	$LostPanel.hide()

func _on_TryAgain_pressed():
	get_tree().paused = false
	$LostPanel.hide()
	emit_signal("try_again")

func _on_Quit_pressed():
	get_tree().quit()
