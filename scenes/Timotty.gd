extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
export var gravity = 10

func _physics_process(delta):
	motion.y += gravity 
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else:
		motion.x = 0
		$AnimatedSprite.animation = "idle"
		$AnimatedSprite.play()
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -400
	
	if motion.x != 0:
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_v = false
		# See the note below about boolean assignment
		$AnimatedSprite.flip_h = motion.x < 0
	
	motion = move_and_slide(motion, UP)
	pass
