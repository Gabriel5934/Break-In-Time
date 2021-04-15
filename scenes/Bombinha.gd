extends RigidBody2D

signal exploded_player

func _on_Bombinha_body_entered(body):
	if body.is_in_group("Environment"):
		queue_free()
	
	if body.is_in_group("Player"):
		emit_signal("exploded_player")
		queue_free()
		body.queue_free()
