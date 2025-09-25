extends Node2D

func _ready():
	$paddle.position = Vector2(700,300)

func _physics_process(delta):
	if Input.is_action_pressed("ui_up"):
		$paddle.position += Vector2(0,-10)
	if Input.is_action_pressed("ui_down"):
		$paddle.position += Vector2(0,10)
		
