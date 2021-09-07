extends RigidBody2D

export var min_speed = 10
export var max_speed = 75


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Area2D_area_entered(area):
	PlayerData.another_one_bites_the_dust()
	queue_free()
