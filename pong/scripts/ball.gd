extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous fra	me.
func _physics_process(delta: float) -> void:
	if Engine.get_physics_frames() % 60 == 0:
		var x_dir = 1 if linear_velocity.x > 0 else -1
		var y_dir = 1 if linear_velocity.y > 0 else -1
		apply_impulse(Vector2(5*x_dir,5*y_dir))
