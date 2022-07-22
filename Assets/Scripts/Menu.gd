extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var file = "res://build.txt"

export(String) var gameVersion = ""
var labelGameVersion
# Called when the node enters the scene tree for the first time.
func _ready():
	load_file(file)
	labelGameVersion = get_node("../GameVersion")
	labelGameVersion.text = gameVersion
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_StartBtn_pressed():
	get_tree().change_scene("res://Assets/Scenes/Map1.tscn")


func _on_ExitBtn_pressed():
	get_tree().quit()

func load_file(file):

	var f = File.new()
	f.open(file, File.READ)
	var index = 1
	while not f.eof_reached(): # iterate through all lines until the end of file is reached
		var line = f.get_line()
		gameVersion = line
		
		index += 1
	f.close()
	return
