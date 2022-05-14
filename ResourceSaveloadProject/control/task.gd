extends Button

var task: Task

const CONTROL_TASK_DETAIL = preload("res://control/task_detail.tscn")
var control_task_detail

func _ready():
	connect("pressed", self, "_on_pressed")
	control_task_detail = CONTROL_TASK_DETAIL.instance()
	control_task_detail.task = task
	self.add_child(control_task_detail)
	update()

func update():
	$MarginContainer/Description.text = task.title


func _on_pressed():
	control_task_detail.popup()

