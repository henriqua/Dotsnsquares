extends Label

var dead_enemies = -1
onready var player = load("res://Scenes/Actors/Player1.gd").new()

func _ready() -> void:
	PlayerData.connect("enemy_killed", self, "update_interface")
	PlayerData.connect("player_died", self, "send_score")
	update_interface()

func update_interface() -> void:
	dead_enemies +=1
	set_text("Score: %s" % dead_enemies)

func send_score():
	PlayerData.set_high_score(dead_enemies)
