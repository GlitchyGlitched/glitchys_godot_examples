extends Control

func _process(delta):
	get_tree().paused = visible
	$Pause.visible = 1-int($Settings.visible)

func _input(pause):
	if Input.is_action_just_pressed("pause"):
		if visible == true:
			visible = false
		else:
			visible = true
			$Settings.visible = false

func _on_exit_button_down():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Examples/Main Menu/menu.tscn")

func _on_settings_button_down():
	$Settings.visible = true

func _on_resume_button_down():
	visible = false
	
