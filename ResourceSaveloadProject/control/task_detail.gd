extends WindowDialog

var task: Task
const CONTROL_TODO = preload("res://control/todo.tscn")

func _ready() -> void:
	connect("about_to_show", self, "_on_about_to_show")
	connect("popup_hide", self, "_on_popup_hide")
	$MarginContainer/VBoxContainer/Button.connect("pressed", self, "_on_add_todo_pressed")

func update():
	$MarginContainer/VBoxContainer/Description.text = task.title
	$MarginContainer/VBoxContainer/Todos.get_children().clear()
	for todo in task.todos:
		var control_todo = CONTROL_TODO.instance()
		control_todo.task = task
		$MarginContainer/VBoxContainer/Todos.add_child(control_todo)

func set_properties():
	task.title = $MarginContainer/VBoxContainer/Description.text

func _on_about_to_show():
	update()

func _on_popup_hide():
	set_properties()
	get_parent().update()

func _on_add_todo_pressed():
		var control_todo = CONTROL_TODO.instance()
		$MarginContainer/VBoxContainer/Todos.add_child(control_todo)
