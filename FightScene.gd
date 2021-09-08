extends Node

export (String, FILE) var home_screen: = ""

func _on_QuitButton_button_up():
	get_tree().change_scene(home_screen)
