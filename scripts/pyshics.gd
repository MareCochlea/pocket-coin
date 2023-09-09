extends RigidBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.is_pressed():
			print("pressed.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
	#	print("pressed.")
	#elif Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false:
	#	print("not.")
