extends Node

var current_project: Project setget set_current_project, get_current_project
var source_path

func set_current_project(project: Project):
	current_project = project

func get_current_project():
	return current_project as Project
	
func save():
	print(ResourceSaver.save(source_path, current_project))
	print(current_project)
