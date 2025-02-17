extends Node2D

const speed = 60
var direction = 1

@onready var raycastright: RayCast2D = $raycastright
@onready var raycastleft: RayCast2D = $raycastleft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycastright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if raycastleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
		
	position.x += speed * delta * direction
