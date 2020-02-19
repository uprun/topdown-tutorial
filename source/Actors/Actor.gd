extends KinematicBody2D
class_name Actor

export var maxSpeed = 300.0
var speed = Vector2(maxSpeed, maxSpeed)

var velocity = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity = move_and_slide(velocity)
	
