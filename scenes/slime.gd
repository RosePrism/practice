extends Node2D

const SPEED = 60

var direction = 1

@onready var ray_casta_right: RayCast2D = $RayCastaRight
@onready var ray_casta_left: RayCast2D = $RayCastaLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_casta_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_casta_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += direction * SPEED * delta
