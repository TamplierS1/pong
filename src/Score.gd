extends Label

export (int) var left_score = 0
export (int) var right_score = 0

func _on_Ball_collided(collider_name: String):
	if collider_name == "LeftWall":
		left_score += 1
	elif collider_name == "RightWall":
		right_score += 1

	text = String(left_score) + " : " + String(right_score)
