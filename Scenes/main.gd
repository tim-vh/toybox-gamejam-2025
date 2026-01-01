extends Node2D

func _ready() -> void:
	print("play music")
	$MusicAudioStreamPlayer.play()
