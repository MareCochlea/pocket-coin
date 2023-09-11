extends RigidBody3D

@onready var camera = $"../Camera3D"

var mouse = Vector2()
var rayOrigin = Vector3()
var rayEnd = Vector3()
var selected = false

const RAY_LENGTH = 1000.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	#if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
	#	if event.is_pressed():
	#		print("pressed")
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		var from = camera.project_ray_origin(event.position)
		var to = from + camera.project_ray_normal(event.position) * RAY_LENGTH
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):	
	var mouse_position = get_viewport().get_mouse_position()
	
	var space_state = get_world_3d().direct_space_state
	
	var query = PhysicsRayQueryParameters2D.create(Vector2(0, 0), Vector2(50, 100))

	rayOrigin = camera.project_ray_origin(mouse_position)
	
	rayEnd = rayOrigin + camera.project_ray_normal(mouse_position) * 2000
	
	var intersection = space_state.intersect_ray(query)
	
	if not intersection.is_empty():
		var pos = intersection.position
		$".".position(Vector3(pos.x, pos.y, pos.z))
	
func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			selected = true
			print("yes")
		else:
			selected = false
			print("no")
