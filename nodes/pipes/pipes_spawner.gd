extends Node


@export var pipes: PackedScene

@onready var up_point: Marker2D = $UpPoint
@onready var down_point: Marker2D = $DownPoint


func _ready() -> void:
	spawn_pipe()


func spawn_pipe() -> void:
	var y_pos = randf_range(up_point.position.y, down_point.position.y)
	var pipe_instance = pipes.instantiate()
	pipe_instance.position = Vector2(up_point.position.x, y_pos)
	add_child(pipe_instance)


func _on_timer_timeout() -> void:
	spawn_pipe()
