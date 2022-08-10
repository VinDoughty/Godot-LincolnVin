extends Node

# There's a type of if-else statement that we can write on a single line,
#	called the 'ternary-if' statement.

func describe_number(number: int) -> void: # using ternary-if statement
	var sign_of_number: String = "negative" if number < 0 else "positive"
	print(number, " is ", sign_of_number)


func _describe_number(number: int) -> void: # using if-else statement
	var sign_of_number: String = ""
	
	if number < 0:
		sign_of_number = "negative"
	else:
		sign_of_number = "positive"

	print(number, " is ", sign_of_number)

func _ready() -> void:
	describe_number(10) #	10 is positive
	describe_number(-5)	#	-5 is negative
