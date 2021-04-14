extends KinematicBody2D

const UP = Vector2(0, -1)
export var motion = Vector2()
export var gravity = 10
var direction

func _ready():
	randomize()
	direction = randi()

func _physics_process(delta):	
	motion.y += gravity 
	motion.x = 0

	if is_on_floor():
		$AnimatedSprite.play()
		
		if direction < 2147483647:
			motion.x = 400
			$AnimatedSprite.flip_h = true
		else:
			motion.x = -400

	motion = move_and_slide(motion, UP)
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
