extends RigidBody3D

var time = Time.get_time_dict_from_system()

# Debug

func _ready():
	%debug.start()
	print("%02d:%02d:%02d" % [time.hour, time.minute, time.second])

func _on_debug_timeout():
	while sleeping == true:
		print("sleeping")


# Pyshics

func _on_mass_timeout():
	set_constant_torque(Vector3(0, 0.05, 0))
	print("done")
	%mass.stop()

func _on_timer_timeout():
	pass

func _on_flip_pressed():
	set_constant_torque(Vector3(0, 10, 0))
	set_linear_velocity(Vector3(0, 12.5, 0))
	set_angular_velocity(Vector3(12.5, 2.5, 12.5))
	%mass.start()
	print("started")

func _on_area_3d_body_entered(body):
	if body_entered:
		pass
