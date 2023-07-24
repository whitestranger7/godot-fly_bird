extends CharacterBody2D


@onready var animation_player: AnimationPlayer = $AnimationPlayer


const GRAVITY: float = 1000.0
const POWER: float = -300.0


func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	
	if (Input.is_action_just_pressed("fly")):
		velocity.y = POWER
		animation_player.play('fly')
	
	if (Input.is_action_just_released("fly")):
		animation_player.stop()
	
	move_and_slide()
