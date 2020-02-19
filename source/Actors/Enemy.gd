extends Actor

var direction = Vector2(randf() * 2 - 1, randf() * 2 - 1)

func _physics_process(delta: float) -> void:
	for i in get_slide_count():
		var collision = get_slide_collision(i)
		print("Collided with: ", collision.collider.name)
		if collision.collider.name == "player":
			print("destroyed due to collision with player")
			queue_free()

	direction = direction.normalized()
	if is_on_wall():
		for i in range(10):
			direction = Vector2(randf() * 2 - 1, randf() * 2 - 1)
			direction = direction.normalized()
			var test_velocity = speed * direction
			if not test_move(global_transform, test_velocity):
				velocity = test_velocity
				break
	else:
		velocity = speed * direction
