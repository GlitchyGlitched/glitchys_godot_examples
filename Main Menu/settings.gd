extends Control

func _on_back_to_menu_button_down():
	visible = false
	
func _process(delta):
	if Input.is_action_pressed("ui_focus_next"):
		$Checkbutton/CheckButton.grab_focus()
