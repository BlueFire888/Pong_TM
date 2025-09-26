extends StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta):
	if Input.is_action_pressed("UP"):
		move_and_collide(Vector2(0,-10))
	if Input.is_action_pressed("DOWN"):
		move_and_collide(Vector2(0,10))
	
