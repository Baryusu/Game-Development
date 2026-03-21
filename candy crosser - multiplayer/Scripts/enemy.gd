extends Node2D
@onready var right = $RayCastRight
@onready var left = $RayCastLeft
@onready var enemy_flip = $AnimatedSprite2D
const SPEED = 60
var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if right.is_colliding():
		direction = -1
		enemy_flip.flip_h = true
	if left.is_colliding():
		direction = 1
		enemy_flip.flip_h = false
	position.x += direction * SPEED * delta
