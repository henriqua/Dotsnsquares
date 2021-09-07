extends Node


signal enemy_killed

func another_one_bites_the_dust():
	emit_signal("enemy_killed")

