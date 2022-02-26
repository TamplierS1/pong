extends KinematicBody2D 

signal collided(collider_name)

export (Vector2) var starting_force = Vector2(-1, 0)
export (int) var speed = 200

var velocity: Vector2 = starting_force * speed 
var prev_velocity: Vector2

func check_collisions():
	if get_slide_count() > 0:
		var collision: KinematicCollision2D = get_last_slide_collision()
		velocity = move_and_slide(prev_velocity.bounce(collision.normal) + collision.collider_velocity)
		emit_signal("collided", collision.collider.name)
		
func _physics_process(delta):
	check_collisions()
	prev_velocity = velocity
	velocity = move_and_slide(velocity)
