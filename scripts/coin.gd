extends MeshInstance3D

var coin = preload("res://shaders/coin.tres")
var gold = load("res://textures/coins/gold.png")

func _ready():
	pass
	
func _on_button_2_pressed():
	coin.albedo_texture = gold
