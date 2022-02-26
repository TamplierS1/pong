extends KinematicBody2D

export (bool) var left_player = false
export (bool) var right_player = false
export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if left_player:
		if Input.is_action_pressed("up_left_player"):
			velocity.y -= 1
		if Input.is_action_pressed("down_left_player"):
			velocity.y += 1
	elif right_player:
		if Input.is_action_pressed("up_right_player"):
			velocity.y -= 1
		if Input.is_action_pressed("down_right_player"):
			velocity.y += 1
			
	velocity = velocity.normalized() * speed
	
func _physics_process(delta: float):
	get_input()
	velocity = move_and_slide(velocity)