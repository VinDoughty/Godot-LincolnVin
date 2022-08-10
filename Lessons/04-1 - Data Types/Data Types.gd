extends Node
# There are many data types in Godot, but here are some basic ones:

# ---- Integer (int) - whole number (no decimal place) (positive or negative) ----
var my_integer = 123

# ---- Float (float) - number with a decimal place (positive or negative) ----
var my_float = 123.456

# ---- String - 0 or more text characters ----
var my_string = "hello"
var my_other_string = 'goodbye'
var my_empty_string = ""

# ---- Boolean (bool) - true or false ----
var my_true_boolean = true
var my_false_boolean = false

# ---- Vector2 (Vector2) - set of 2 numbers (int or float) (will be converted to floats) ----
var my_2D_position = Vector2(20,50.3)

# ---- Vector3 (Vector3) - set of 3 numbers (int or float) (will be converted to floats) ----
var my_3D_position = Vector3(20, 50.3, -7.4)

# ---- Color - Red, Green, Blue, and Alpha (opacity) channel values ----
var my_color_1 = Color.red
var my_color_2 = Color(1, 0, 0, 1)

# ---- Array - list of values (elements) ----
var my_simple_array = [1, 2, 3, 4, 5,]
var my_complex_array = [1, -0.2, "C", true, false, Color.green,]
var my_empty_array = []

# ---- Dictionary - list of key-value pairs ----
var my_dictionary_1 = {"key_1": 100, "key_2": 55}
var my_dictionary_2 = {
	"Greeting": "hello",
	"Farewell": "goodbye",
}
var my_dictionary_3 = {
	favorite_food = "pizza",
	favorite_animal = "dog"
}
var my_empty_dictionary = {}

