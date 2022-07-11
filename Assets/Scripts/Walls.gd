extends Camera

var detector = null

func _ready():
	detector = get_node("WallDetector")
func _process(_delta):
	pass
	#detect_colision()
	
#func detect_colision():	
	#var walls = detector.get_overlapping_bodies()
	#for i in walls.size():
		#walls[i].active = false;
		
func _on_WallDetector_body_entered(body):
	body.get_parent().visible = false
func _on_WallDetector_body_exited(body):
	body.get_parent().visible = true
