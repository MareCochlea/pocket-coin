extends DirectionalLight3D

func _ready():
	%countdown.start()

func _on_countdown_timeout():
	var time = Time.get_time_dict_from_system()
	print("%02d:%02d:%02d" % [time.hour, time.minute, time.second])
	if time.second == 0:
		set_rotation(Vector3( -64, 0, 0))
	elif time.second == 10:
		set_rotation(Vector3( -24, 0, 12))
	elif time.second == 20:
		set_rotation(Vector3( 0, 0, 12))
	elif time.second == 30:
		set_rotation(Vector3( 90, 0, 12))
	elif time.second == 40:
		set_rotation(Vector3( 60, 0, 12))
	elif time.second == 50:
		set_rotation(Vector3( -50, 0, 12))
	elif time.second == 59:
		set_rotation(Vector3( 50, 0, 12))
