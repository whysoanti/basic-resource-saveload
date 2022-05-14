extends PanelContainer

var project: Project
const CONTROL_TASK = preload("res://control/task.tscn")

func _ready() -> void:
	update()

func update():
	$MarginContainer/VBoxContainer/Label.text = project.title
	$MarginContainer/VBoxContainer/VBoxContainer.get_children().clear()
	for task in project.tasks:
		var control_task = CONTROL_TASK.instance()
		control_task.task = task
		$MarginContainer/VBoxContainer/VBoxContainer.add_child(control_task)
