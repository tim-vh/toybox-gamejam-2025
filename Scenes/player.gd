extends CharacterBody2D

func _physics_process(delta: float) -> void:
	velocity.x = 200
	velocity += get_gravity() * delta

	velocity += Vector2(0, -400) * delta
	
	if Input.is_action_just_pressed("flap"):
		velocity.y = -200
	

	if velocity.y > 1000:
		velocity.y = 1000

	move_and_slide()

func kill():
	pass
	#position = %StartingPoint.position
