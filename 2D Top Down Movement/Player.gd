extends CharacterBody2D

const speed = 300
const accel = 10

var input: Vector2

func get_input():
	input.x = int(Input.get_action_strength("ui_right")) - int(Input.get_action_strength("ui_left"))
	input.y = int(Input.get_action_strength("ui_down")) - int(Input.get_action_strength("ui_up"))
	return input.normalized()
	
func _process(delta):
	var playerInput = get_input()
	velocity = lerp(velocity, playerInput * speed, delta * accel)
	move_and_slide()
