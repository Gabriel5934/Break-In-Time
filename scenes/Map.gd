extends Node

export (PackedScene) var Bombinha

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
