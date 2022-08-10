extends Node
# We can actually assign values to our enum keys if we want.
# For each key we don't assign a value, it will assign it the value of: (previous key's value) + 1

enum MyEnum1 {A = 5, B, C}
enum MyEnum2 {A, B = 100, C}
enum MyEnum3 {A, B, C = 20}
enum MyEnum4 {A = 5, B = -2, C = -1000}
enum MyEnum5 {A = 7, B = 7, C = 7}	# Don't assign duplicate enum values.
									# Doing so would defeat the entire purpose of enums. (Unique values)

enum Weapon {NONE = -1, SWORD, BOW, STAFF} # You can start an enum from a negative number.

func _ready() -> void:
	print(MyEnum1)		# {A:5, B:6, C:7}
	print(MyEnum2)		# {A:0, B:100, C:101}
	print(MyEnum3)		# {A:0, B:1, C:20}
	print(MyEnum4)		# {A:5, B:-2, C:-1000}
	print(MyEnum5)		# {A:7, B:7, C:7}

	print(Weapon)		# {BOW:1, NONE:-1, STAFF:2, SWORD:0}		(alphabetical)

