extends Node2D

@export var number: int = 5

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("kill"):
		body.kill()
