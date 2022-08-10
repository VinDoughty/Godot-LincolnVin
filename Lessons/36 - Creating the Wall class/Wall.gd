extends ColorRect # Extending ColorRect class

class_name Wall # Registering 'Wall' as a new class/data type
				# This allows other classes to create/instantiate a new 'Wall' object.
				# Example:				var wall := Wall.new()

func _ready() -> void:
	color = Color.red
