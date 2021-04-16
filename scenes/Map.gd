extends Node

export (PackedScene) var Bombinha
<<<<<<< HEAD
export (PackedScene) var Timotty
var last_position

func _ready():
	pass
	
func game_start():
	$BombinhaTimer.start()
	var timotty = Timotty.instance()
	add_child(timotty)
	timotty.connect("felt_in_void", self, "player_died")

func _on_BombinhaTimer_timeout():
	randomize()
	$BombinhaPath/BombinhaSpawnLocation.offset = randi()
	
	while $BombinhaPath/BombinhaSpawnLocation.offset == last_position:
		randomize()
		$BombinhaPath/BombinhaSpawnLocation.offset = randi()
	
	var bombinha = Bombinha.instance()
	add_child(bombinha)
	bombinha.position = $BombinhaPath/BombinhaSpawnLocation.position
	last_position = $BombinhaPath/BombinhaSpawnLocation.offset
	
	bombinha.connect("exploded_player", self, "player_died")

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = true
		$PauseCanvasLayer/PausePanel.show()

func player_died():
	get_tree().paused = true
	
	var enemies = get_tree().get_nodes_in_group("Enemy")
	for enemy in enemies:
		enemy.queue_free()
	
	$LostCanvasLayer/LostPanel.show()


func _on_LostCanvasLayer_try_again():
	game_start()


func _on_TipsCanvasLayer_tips_closed():
	game_start()
=======

func _ready():
	pass

func _on_BombinhaTimer_timeout():
	randomize()

	$BombinhaPath/BombinhaSpawnLocation.offset = randi()
	var bombinha = Bombinha.instance()
	add_child(bombinha)
	# Set the mob's direction perpendicular to the path direction.
	var direction = $BombinhaPath/BombinhaSpawnLocation.rotation + PI / 2
	# Set the mob's position to a random location.
	bombinha.position = $BombinhaPath/BombinhaSpawnLocation.position
>>>>>>> 8378331 (Added a Home Screen)
