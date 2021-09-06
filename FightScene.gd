extends Node

export (PackedScene) var enemy
var enemy_count = 0

func _on_NinjaThrowTimer_timeout():

	var star_spawn_location = $Ninja
	
	var star = enemy.instance()
	$EnemyPath/StarCatcher.add_child(star)
	enemy_count = $EnemyPath/StarCatcher.get_child_count()
	$EnemyCounter.text = "Enemies: "+ str(enemy_count)
	

	var direction = star_spawn_location.rotation

	star.position = star_spawn_location.position

	direction += rand_range(-PI / 4, PI / 4)
	star.rotation = direction

	var velocity = Vector2(rand_range(star.min_speed, star.max_speed), 0)
	star.linear_velocity = velocity.rotated(direction)
	

