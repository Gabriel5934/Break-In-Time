extends Area2D
export (PackedScene) var quizbuttom


			
func _on_EndZone_body_entered(body):
	if body.name == "Timotty":
		get_tree().change_scene("res://scenes/Quiz.tscn")
