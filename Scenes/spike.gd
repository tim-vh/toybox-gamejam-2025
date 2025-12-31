extends Node2D

@export var number: int = 5

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("kill"):
		body.kill()


func _on_detector_zone_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		$AnimatedSprite2D.frame = 1


func _on_detector_zone_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		$AnimatedSprite2D.frame = 0
