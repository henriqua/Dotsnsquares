extends Label



func _ready():
	set_text("High Score: " + str(PlayerData.get_high_score()))
