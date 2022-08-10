extends Node
# When we press the 'Play Scene' button in Godot (F6), we're running the currently selected (open) scene.
# Each scene must have a 'root' node, or top-level node.
# A scene can have just one node (the root node), or multiple nodes.
# We can add nodes as children of the root node if we want.
# This hierachy of nodes (root node plus all child nodes) is called the 'SceneTree'.

# Each node can have a script attached to it to give it additional functionality.
# We can use nodes even if they don't have a script attached to them.
# In this case, the node will have only its default behavior (defined by its class).

# Remember, nodes are objects, and objects get their functionality from classes.
# Every node in Godot has a class that it inherits from.
# Godot has a base 'Object' class, which the 'Node' class extends.
# This base 'Object' class is what allows us to use the 'new()' function, to create an object (instance of a class).

# A 'Node' object is an instance of the 'Node' class, which has functions like '_ready()' that it can use.
# There are subclasses of the Node class, which all inherit from the Node class.
# They have all the functionality of the Node class, PLUS whatever functionality is given to them by their own
#		class file (script).

# For example, a 'CanvasItem' node extends the 'Node' class.
# The 'CanvasItem' node is used for drawing things on the screen, such as backgrounds and character sprites.

# Then we have 'Control' nodes, which extend the 'CanvasItem' class.
# 'Control' nodes are used for creating GUIs, like buttons and popup windows.

# There is a 'ColorRect' class, which extends the 'Control' class.
# ColorRect nodes are useful for drawing backgrounds and rectangles.

# We'll use a ColorRect node to draw our prototype character, so we can see him moving around.
# The inheritance of the ColorRect node looks like this:
# Object -> Node -> CanvasItem -> Control -> ColorRect

# ColorRect has access to all the properties and functions of its parent (ancestor) classes plus a
#		property called 'color', which we can use to set its color.

# We'll make our Player node and Player class in the next lesson.
