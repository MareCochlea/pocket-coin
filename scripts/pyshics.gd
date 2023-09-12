extends RigidBody3D

func _ready():
	pass

func _process(_delta):
	pass

func _on_flip_pressed():
	set_linear_velocity(Vector3(0, 8.5, 0))
	set_angular_velocity(Vector3(12.5, 2.5, 12.5))
