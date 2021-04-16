extends RigidBody2D

<<<<<<< HEAD
signal exploded_player

=======
>>>>>>> 8378331 (Added a Home Screen)
func _on_Bombinha_body_entered(body):
	if body.is_in_group("Environment"):
		queue_free()
	
	if body.is_in_group("Player"):
<<<<<<< HEAD
		emit_signal("exploded_player")
=======
>>>>>>> 8378331 (Added a Home Screen)
		queue_free()
		body.queue_free()
