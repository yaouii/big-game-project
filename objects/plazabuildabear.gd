extends Area2D

var entered = false

func _on_Area2D_body_entered(body: PhysicsBody2D):
	entered = true

func _process(delta):
	get_tree().change_scene_to_file("res://objects/build_a_bear.tscn")
