extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	$Border.play()
	$PinkPlayerPunch.play()
	$BluePlayerPunch.play()
	$ThrowingStar/AnimationPlayer.play("Spin")



func _on_QuitButton_pressed():
	get_tree().quit()


	
