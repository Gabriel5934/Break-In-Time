extends Node

export (PackedScene) var Bombinha
export (PackedScene) var Timotty
export (PackedScene) var Quiz
export (PackedScene) var quizbuttom

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

func _on_Close_pressed():
	$TipsPanel.hide()
	emit_signal("tips_closed")
