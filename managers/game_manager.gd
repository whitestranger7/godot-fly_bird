extends Node


@onready var main_scene = preload("res://scenes/main.tscn")
@onready var menu_scene = preload("res://scenes/menu.tscn")


var score = 0
var highest_score = 0
enum Routes {
	MAIN,
	MENU,
}


func start_game() -> void:
	score = 0
	navigate_to(Routes.MAIN)


func get_score() -> String:
	return str(score)


func get_highest_score() -> String:
	return str(highest_score)


func increment_score() -> void:
	score += 1
	if (score >= highest_score):
		highest_score = score


func die() -> void:
	navigate_to(Routes.MENU)


func navigate_to(route: Routes) -> void:
	if route == Routes.MAIN:
		get_tree().change_scene_to_packed(main_scene)
	if route == Routes.MENU:
		get_tree().change_scene_to_packed(menu_scene)
	else:
		return
