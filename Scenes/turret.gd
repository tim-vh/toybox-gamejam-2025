extends Node2D

var red_bullet_scene = preload("res://Scenes/red_bullet.tscn")

var enabled: bool = false
var loaded: bool = true

func _process(_delta: float) -> void:
	if enabled:
		shoot()

func _on_detector_zone_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		enabled = true
		
func _on_detector_zone_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		enabled = false
		
func _on_reload_timer_timeout() -> void:
	loaded = true
		
func shoot():
	if loaded:
		loaded = false
		var red_bullet: Node2D = red_bullet_scene.instantiate()
		red_bullet.position = $Muzzle.global_position
		%Bullets.add_child(red_bullet)
		
		$AudioStreamPlayer2D.play()
		
		$ReloadTimer.start()
	
