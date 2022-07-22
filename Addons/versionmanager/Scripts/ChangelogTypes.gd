extends Control

onready var options = get_node("ChangelogTypes")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	options.add_item("Maps")
	options.add_item("Objects")
	options.add_item("Network")
	options.add_item("UI")
	options.add_item("Other")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
