extends Node

var score = 0 setget set_score
var high_score = 0 setget set_high_score, get_high_score


signal enemy_killed

func another_one_bites_the_dust():
	emit_signal("enemy_killed")

func set_score(value: int):
	score = value

func set_high_score(value: int):
	if value > high_score:
		high_score = value

func get_high_score():
	return high_score
