extends MeshInstance3D

var coin = preload("res://shaders/coin.tres")
var gold = load("res://textures/coins/gold.png")
var silver = load("res://textures/coins/silver.png")
var copper = load("res://textures/coins/copper.png")

func _ready():
	pass
	
func _on_button_2_pressed():
	coin.albedo_texture = gold
	
func _on_button_pressed():
	coin.albedo_texture = silver

func _on_button_3_pressed():
	coin.albedo_texture = copper
