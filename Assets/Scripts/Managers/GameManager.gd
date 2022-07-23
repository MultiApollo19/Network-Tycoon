extends Node


class_name GameData

var isWorldView:bool=false
var time=0


func _ready():
	print(time)
func _process(delta):
	time+=delta
	print(time)
