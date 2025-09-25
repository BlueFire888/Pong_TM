extends Node2D

func _ready():
	var screen_size = get_tree().root.get_window().size
	var init_pos = Vector2((screen_size.x * 0.833),(screen_size.y / 2))
	$right_paddle.position = init_pos
	init_pos = Vector2((screen_size.x * 0.166),(screen_size.y / 2))
	$left_paddle.position = init_pos

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		$right_paddle.position += Vector2(0,-10)
	if Input.is_action_pressed("ui_down"):
		$right_paddle.position += Vector2(0,10)
	if Input.is_action_pressed("UP"):
		$left_paddle.position += Vector2(0,-10)
	if Input.is_action_pressed("DOWN"):
		$left_paddle.position += Vector2(0,10)
		
