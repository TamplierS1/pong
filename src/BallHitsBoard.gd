extends AudioStreamPlayer

func _on_Ball_collided(collider_name: String):
	if collider_name == "LeftBoard" or collider_name == "RightBoard":
		play()
