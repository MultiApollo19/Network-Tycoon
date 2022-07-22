extends Node

var GameAnalytics


var gameSecret = "eeb3d1e113ec965e30fd25cfba59e11bb3763653"
var gameKey= "ccd02407e71ffcf88caa2817b1caaaf3"
# Declare member variables here. Examples:
# var a = 2
onready var menu = get_node("../Menu")

# Called when the node enters the scene tree for the first time.
func _ready():
	if(Engine.has_singleton("GameAnalytics")):
		GameAnalytics = Engine.get_singleton("GameAnalytics")
		GameAnalytics.configureBuild(menu.gameVersion)
		
		GameAnalytics.init(gameKey,gameSecret)
		print("DONE")
		 # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
