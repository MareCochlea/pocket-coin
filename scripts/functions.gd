extends RigidBody3D

# Debug

func _ready():
	%debug.start()

func _on_debug_timeout():
	print(get_contact_count())
	if sleeping == true:
		print("sleeping")


# Pyshics

func _on_mass_timeout():
	set_constant_torque(Vector3(0, 0.05, 0))
	print("done")
	%mass.stop()


func _on_flip_pressed():
	set_constant_torque(Vector3(0, 10, 0))
	set_linear_velocity(Vector3(0, 12.5, 0))
	set_angular_velocity(Vector3(12.5, 2.5, 12.5))
	%mass.start()
	print("started")

func _on_area_3d_body_entered(_body):
	if body_entered:
		%timer.start()

func _on_timer_timeout():
	pass
