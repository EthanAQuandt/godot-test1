extends Area2D

@onready var manager: Node = %manager




func _on_body_entered(body: Node2D) -> void:
	#print("coin") # Replace with function body.
	manager.add_point()
	queue_free()
