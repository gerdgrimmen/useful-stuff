# link - blurry sprites - 2D
# https://www.youtube.com/watch?v=HuOj-vVPYyE
Project Settings
Rendering -> Textures
Default Texture Filter -> "Nearest"

# or adding this snippet to your project.godot
[rendering]

textures/canvas_textures/default_texture_filter=0


# File Access
# https://docs.godotengine.org/en/stable/classes/class_fileaccess.html

func save_to_file(content):
	var file = FileAccess.open("user://save_game.dat", FileAccess.WRITE)
	file.store_string(content)

func load_from_file():
	var file = FileAccess.open("user://save_game.dat", FileAccess.READ)
	var content = file.get_as_text()
	return content