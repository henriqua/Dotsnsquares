extends Label

var dead_enemies = -1

func _ready() -> void:
	PlayerData.connect("enemy_killed", self, "update_interface")
	update_interface()

func update_interface() -> void:
	dead_enemies +=1
	set_text("Score: %s" % dead_enemies)
