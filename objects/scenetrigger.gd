extends Area2D

var entered = false

func _on_body_entered(body):
	entered = true
	get_tree().change_scene_to_file("res://objects/build_a_bear.tscn")
	print("help me")

func _process(delta):
	if entered == true:
		get_tree().change_scene_to_file("res://objects/build_a_bear.tscn")
