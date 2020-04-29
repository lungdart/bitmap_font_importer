tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("BitmapFontImporter", "BitmapFont", preload("importer.gd"), preload("icon.svg"))
	
func _exit_tree():
	remove_custom_type("BitmapFontImporter")
