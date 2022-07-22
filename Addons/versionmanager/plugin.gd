tool
extends EditorPlugin

const main_panel = preload("res://Addons/versionmanager/Panels/main_panel.tscn")

var main_panel_instance


func _enter_tree():
	main_panel_instance=main_panel.instance()
	#add main to view in editor
	get_editor_interface().get_editor_viewport().add_child(main_panel_instance)
	#hide panel
	make_visible(false)
	
	pass


func _exit_tree():
	if main_panel_instance:
		main_panel_instance.queue_free()
	pass

func has_main_screen():
	return true

func make_visible(visible):
	if main_panel_instance:
		main_panel_instance.visible=visible

func get_plugin_name():
	return "Version manager"

func get_plugin_icon():
	return get_editor_interface().get_base_control().get_icon("Label","EditorIcons")
