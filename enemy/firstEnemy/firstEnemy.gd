extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var right = true
var SPEED = 6000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var old = self.get_linear_velocity()
	var dir = -1
	if right:
		dir = 1
	self.set_linear_velocity(Vector2( SPEED * dir * delta, old.y))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	right = !right
