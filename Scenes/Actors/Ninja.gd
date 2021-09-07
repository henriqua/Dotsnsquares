extends AnimatedSprite




export (PackedScene) var enemy

func _on_NinjaThrowTimer_timeout():
	var star_spawn_location = $Position2D
	
	var star = enemy.instance()
	add_child(star)

	var direction = star_spawn_location.rotation

	star.position = star_spawn_location.position

	direction += rand_range(-PI / 4, PI / 4)
	star.rotation = direction

	var velocity = Vector2(rand_range(star.min_speed, star.max_speed), 0)
	star.linear_velocity = velocity.rotated(direction)
	
	
