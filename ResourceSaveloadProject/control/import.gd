extends Control


func _ready() -> void:
	$FileDialog.connect("file_selected", self, "on_file_selected")
	$FileDialog.popup()

func on_file_selected(path):
	ProjectManager.set_current_project(load(path))
	ProjectManager.source_path = path
	get_tree().change_scene("res://control/test_interface.tscn")
