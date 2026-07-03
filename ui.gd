extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_set_main_theme()



func _set_main_theme():
	var custom_theme:Theme = preload("res://theme/main_theme.tres")
	var main_color = custom_theme.get_color("main_color","main_theme_data")
	custom_theme.set_color("font_color","Button",main_color)
