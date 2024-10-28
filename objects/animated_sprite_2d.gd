extends AnimatedSprite2D

func _process(delta):
	# play animation while right cursor key is pressed
	if Input.is_action_pressed("ui_down"):
		play("walk_forward")
		
	elif Input.is_action_pressed("ui_up"):
		play("walk_backwards")
		
		
	elif Input.is_action_pressed("ui_right"):
		play("walk_right")
	
	elif Input.is_action_pressed("ui_left"):
		play("walk_left")
	else:
		stop()
