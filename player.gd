extends CharacterBody3D


@export var SPEED = 10
const JUMP_VELOCITY = 4.5
@export var fall_acceleration = 75

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(_delta):
	# Add the gravity.
	var direction = Vector3.ZERO

	# We check for each move input and update the direction accordingly.
	if Input.is_action_pressed("right"):
		direction.x += 1
	if Input.is_action_pressed("left"):
		direction.x -= 1
	if Input.is_action_pressed("up"):
		# Notice how we are working with the vector's x and z axes.
		# In 3D, the XZ plane is the ground plane.
		direction.z += 1
	if Input.is_action_pressed("down"):
		direction.z -= 1
	if direction != Vector3.ZERO:
		direction = direction.normalized()
		
		
