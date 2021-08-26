extends CanvasLayer

signal tips_closed

func _on_Close_pressed():
	$TipsPanel.hide()
	emit_signal("tips_closed")
