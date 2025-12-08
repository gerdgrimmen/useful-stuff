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

# JSON preocessing
# https://docs.godotengine.org/en/stable/classes/class_json.html

var data_to_send = ["a", "b", "c"]
var json_string = JSON.stringify(data_to_send)
# Save data
# ...
# Retrieve data
var json = JSON.new()
var error = json.parse(json_string)
if error == OK:
	var data_received = json.data
	if typeof(data_received) == TYPE_ARRAY:
		print(data_received) # Prints the array.
	else:
		print("Unexpected data")
else:
	print("JSON Parse Error: ", json.get_error_message(), " in ", json_string, " at line ", json.get_error_line())


# first implementation snippet

var game_data

func load_game_data():
	var file = FileAccess.open("user://data.json", FileAccess.READ)
	var content = file.get_as_text()
	game_data = JSON.parse_string(content)


func save_game_data():
	var file = FileAccess.open("user://data.json", FileAccess.WRITE)
	file.store_string(JSON.stringify(game_data))

# game_data file: data.json
{"levels": [
	{"name": "01", "word_list": ["sh", "psh", "shhh", "zip"]}
	,{"name": "02", "word_list": []}
]}
