extends Control

func _process(delta):
	$Menu.visible = 1-int($Settings.visible)
	
func _on_start_button_down():
	get_tree().change_scene_to_file("res://Examples/Main Menu/this_is_a_game.tscn")

func _on_settings_button_down():
	$Settings.visible = true

func _on_exit_button_down():
	get_tree().quit()
