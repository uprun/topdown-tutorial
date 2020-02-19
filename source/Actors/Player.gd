extends Actor


func _physics_process(delta: float) -> void:
	var direction = Vector2(0, 0)
	direction.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	direction.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	direction = direction.normalized()
	
	velocity = speed * direction
	
	
