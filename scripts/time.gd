extends DirectionalLight3D

func _ready():
	%countdown.start()

func _on_countdown_timeout():
	
	var time = Time.get_time_dict_from_system()
