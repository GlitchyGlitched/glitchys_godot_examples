extends Control

func _process(delta):
	$PauseButtons.visible = 1-int($SettingsMenu.visible)
	
func _input(esc):
	if esc is InputEventKey and esc.pressed:
		if esc.keycode == KEY_ESCAPE:
			if visible == true:
				visible = false
			else:
				visible = true

func _on_exit_button_down():
	get_tree().change_scene_to_file("res://WIP/Main Menu/menu.tscn")

func _on_settings_button_down():
	$SettingsMenu.visible = true
	visible = true

func _on_continue_button_down():
	visible = false
