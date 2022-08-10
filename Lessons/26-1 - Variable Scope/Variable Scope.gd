extends Node

# Class Scope
var member_var: int = 1 # 'member variables' are variables declared OUTSIDE of a function
# member variables are accessible from anywhere inside this script/class

func function_A() -> void:
	# Local Scope / Function Scope
	var local_var_A: int = 2 # 'local variables' are variables declared inside of a function
	# local vars are only accessible inside the function in which they are declared
	print("member_var: ", member_var) # can access a member var from inside a function
	print("local_var_A: ", local_var_A)
#	print("local_var_B: ", local_var_B) # Error: 'local_var_B' isn't declared in the current scope
	
func function_B() -> void:
#	print("local_var_B: ", local_var_B) # Can't access variables declared LATER in code
	var local_var_B: int = 3
	print("local_var_B: ", local_var_B)
#	print("local_var_A: ", local_var_A) # Error: 'local_var_A' isn't declared in the current scope

func function_C() -> void:
	var local_var_C: int = 4
	
	if local_var_C > 0:
		# Block Scope
		var local_var_D: int = 5
		print("local_var_C: ", local_var_C) # Can access local vars declared earlier OUTSIDE of if-statement
		
		if member_var > 0: # can always access a member var
			print("local_var_D: ", local_var_D) # Can access local vars declared earlier in the if-block
			
#	var local_var_E := local_var_D + 1 # Error: 'local_var_D' isn't declared in the current scope

func _ready() -> void:
	function_A()
	function_B()
	function_C()

# ------------- OUTPUT -------------
#	member_var: 1
#	local_var_A: 2
#	local_var_B: 3
#	local_var_C: 4
#	local_var_D: 5
# ----------------------------------
