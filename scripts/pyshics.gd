extends RigidBody3D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		print("pressed.")
	elif Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) == false:
		print("not.")
