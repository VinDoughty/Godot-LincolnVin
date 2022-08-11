extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var a_player = $"../AudioStreamPlayer"

# Called when the node enters the scene tree for the first time.
func _ready():
	#a_player.play(0.0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Button_button_down():
	get_tree().change_scene("res://menu.tscn")
	a_player.play(0.0)
	Resources.audio_player.play()
