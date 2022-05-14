extends CheckBox


var todo: Todo


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("toggled", self, "_on_toggled")
	update()

func update():
	text = todo.title
	pressed = todo.done

func _on_toggled():
	todo.done = pressed
