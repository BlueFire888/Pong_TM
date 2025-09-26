extends Node2D

func _ready():
	var screen_size = get_tree().root.get_window().size
	var init_pos = Vector2((screen_size.x * 0.833),(screen_size.y / 2))
	$right_paddle.position = init_pos
	init_pos = Vector2((screen_size.x * 0.166),(screen_size.y / 2))
	$left_paddle.position = init_pos
	$worldboundry/Bottom_CollisionShape2D.position = Vector2(0,screen_size.y)
	$Ball.position = Vector2(screen_size.x/2,screen_size.y/2)
	var direction = 1 if randi_range(0,1) else -1
	$Ball.linear_velocity.x = 150 * direction
	direction = 1 if randi_range(0,1) else -1
	$Ball.linear_velocity.y = 110 * direction
	
