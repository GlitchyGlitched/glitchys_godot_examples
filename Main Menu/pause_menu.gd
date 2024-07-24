extends Control

func _process(delta):
	$Pause.visible = 1-int($SettingsMenu.visible)
	
func _input(esc):
	if esc is InputEventKey and esc.pressed:
		if esc.keycode == KEY_ESCAPE:
			if visible == true:
				visible = false
				get_tree().paused = false
			else:
				visible = true
				get_tree().paused = true

func _on_exit_button_down():
	get_tree().change_scene_to_file("res://Examples/Main Menu/menu.tscn")

func _on_settings_button_down():
	$SettingsMenu.visible = true

func _on_resume_button_down():
	visible = false
	get_tree().paused = false
