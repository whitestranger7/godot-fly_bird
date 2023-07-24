extends Node


@onready var score: Label = $CanvasLayer/MarginContainer/HBoxContainer/Score
@onready var high_score: Label = $CanvasLayer/MarginContainer/HBoxContainer/HighScore


func _ready() -> void:
	score.text = 'Score: ' + GameManager.get_score()
	high_score.text = 'Highest score: ' + GameManager.get_highest_score()


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("fly"):
		GameManager.start_game()
