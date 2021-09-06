extends TextureButton


var next_scene_path: = "res://FightScene.tscn"


func _on_StartGameButton_button_up():
	get_tree().paused = false
	get_tree().change_scene(next_scene_path)
