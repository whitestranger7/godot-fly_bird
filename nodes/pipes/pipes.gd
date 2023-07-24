extends Node2D


@onready var laser: Area2D = $Laser


const MOVE_SPEED: float = 120.0


func _process(delta: float) -> void:
	position.x -= MOVE_SPEED * delta


func _on_screen_exited() -> void:
	queue_free()
