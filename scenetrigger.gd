extends Area2D

func _on_body_entered(body):
	get_tree().change_scene_to_file("res://objects/build_a_bear.tscn")

func _process(delta):
	pass
