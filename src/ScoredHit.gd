extends AudioStreamPlayer

func _on_Ball_collided(collider_name: String):
	if collider_name == "LeftWall" or collider_name == "RightWall":
		play()
