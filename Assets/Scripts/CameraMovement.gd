extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var movement_speed = 100
export var movement_acc = 200
export var movement_friction = 50
var x_mov=0
var z_mov=0
export var movement = Vector3(0,0,0)
var reset_pos = Vector3(0,0,0)
var reset_speed=1000
var reset_acc=1000
export var velocity = Vector3.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	x_mov=translation.x
	z_mov=translation.z
	movement = Vector3(x_mov,0,z_mov)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input_keyboard(delta)
	#movement
func get_input_keyboard(delta):	

	var movement_input = Vector3.ZERO

	movement_input.z = Input.get_action_strength("cam_mov_right") - Input.get_action_strength("cam_mov_left")
	movement_input.x = Input.get_action_strength("cam_mov_fwd") - Input.get_action_strength("cam_mov_bwd")

	if(movement_input !=Vector3.ZERO):
		velocity = velocity.move_toward(movement_input*movement_speed,movement_acc*delta)
	else:
		velocity = velocity.move_toward(Vector3.ZERO,movement_friction*delta)


	move_and_slide(velocity)
