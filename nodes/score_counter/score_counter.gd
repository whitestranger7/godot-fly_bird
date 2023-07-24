extends Control


@onready var label: Label = $MarginContainer/Label


func _process(delta: float) -> void:
	label.set_text(GameManager.get_score())
