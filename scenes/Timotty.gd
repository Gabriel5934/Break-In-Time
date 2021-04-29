extends KinematicBody2D

signal felt_in_void

const UP = Vector2(0, -1)

var is_grounded
onready var raycasts = $raycast

var motion = Vector2()
export var gravity = 10
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _physics_process(delta):
	motion.y += gravity 
	is_grounded = _check_is_grounded()
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else:
		if is_grounded:
			motion.x = 0
			$AnimatedSprite.animation = "idle"
			$AnimatedSprite.play()
	
	
	if Input.is_action_just_pressed("ui_up"):
		motion.y = -400
		
	if !is_grounded and Input.is_action_just_pressed("ui_up"):
		$AnimatedSprite.animation = "jump_shot"
		
		

	
	if is_grounded and motion.x != 0  :
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_v = false
		# See the note below about boolean assignment
		$AnimatedSprite.flip_h = motion.x < 0
		
	if !is_grounded :
		$AnimatedSprite.animation = "jump_shot"
		
		
	motion = move_and_slide(motion, UP)

	position += motion * delta
	position.x = clamp(position.x, 0, screen_size.x)
	#position.y = clamp(position.y, 0, screen_size.y)
	


func _on_VisibilityNotifier2D_screen_exited():
	emit_signal("felt_in_void")
	queue_free()
	

func _check_is_grounded():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true 
	return false 
	

