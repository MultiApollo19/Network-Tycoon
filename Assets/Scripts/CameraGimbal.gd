extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var rotationSpeed=PI/2
export var minZoom = 50
export var maxZoom=84
export var zoom_speed=1.2

var zoom =75
var camera
# Called when the node enters the scene tree for the first time.
func _ready():
	camera = get_viewport().get_camera()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input_keyboard(delta)
	#$InnerGimbal.rotation.x = clamp($InnerGimbal.rotation.x,-1.4,0)

func _unhandled_input(event):
	if event.is_action_pressed("cam_zoom_in"):
		zoom-=zoom_speed
	if event.is_action_pressed("cam_zoom_out"):
		zoom+=zoom_speed
	zoom = clamp(zoom,minZoom,maxZoom)
	camera.size =zoom


func get_input_keyboard(delta):
	#rotate outer gimbal (y ax)
	var y_rotation =0
	if Input.is_key_pressed(KEY_RIGHT):
		y_rotation+=1
	if Input.is_key_pressed(KEY_LEFT):
		y_rotation-=1
	rotate_object_local(Vector3.UP,y_rotation*rotationSpeed*delta)
	#rotate inner gimbal (x ax)
	#var x_rotation =0
	#if Input.is_key_pressed(KEY_UP):
		#x_rotation+=1
	#if Input.is_key_pressed(KEY_DOWN):
		#x_rotation-=1
	#$InnerGimbal.rotate_object_local(Vector3.RIGHT,x_rotation*rotationSpeed*delta)
