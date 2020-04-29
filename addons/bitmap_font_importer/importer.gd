tool
extends BitmapFont

export(int) var character_height = 8 setget set_character_width
export(int) var character_width = 8 setget set_character_height
export(Texture) var texture = null setget set_texture
export var char_map = [
	"ABCDEFGHIJKLMNOPQRSTUVWXYZ",
	"abcdefghijklmnopqrstuvwxyz",
	"0123456789:'.->!?%/ "
]

func update():
	if self.texture == null:
		return

	var row_idx = 0
	for row in char_map:
		var col_idx = 0
		var ascii = row.to_ascii()
		for byte in ascii:
			# Calculate the region for the character
			var x = self.character_width * col_idx
			var y = self.character_height * row_idx
			var region = Rect2(x, y, self.character_width, self.character_height)
			
			# Add the new character
			var ascii_char = int(byte)
			self.add_char(ascii_char, 0, region)
			col_idx += 1
		row_idx += 1 

func set_character_width(value):
	character_width = value
	update()
	
func set_character_height(value):
	character_height = value
	update()

func set_texture(value):
	texture = value
	clear()
	add_texture(self.texture)
	update()
	
