extends Control

const CONTROL_PROJECT = preload("res://control/project.tscn")

func _ready():
	$QuitButton.connect("pressed", self, "_on_quit_pressed")
	var control_project = CONTROL_PROJECT.instance()
	control_project.project = ProjectManager.get_current_project()
	$ScrollContainer/VBoxContainer.add_child(control_project)

func _on_quit_pressed():
	ProjectManager.save()
	get_tree().quit()
