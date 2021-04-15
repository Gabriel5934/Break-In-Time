extends RigidBody2D

func _on_Bombinha_body_entered(body):
	if body.is_in_group("Environment"):
		queue_free()
	
	if body.is_in_group("Player"):
		queue_free()
		body.queue_free()
