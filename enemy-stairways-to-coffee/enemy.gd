extends CharacterBody2D

@export var speed: float


func _process(delta):
	velocity. x = speed * delta
	
	move_and_slide()


func _on_walldetector_body_entered(body: Node2D) -> void:
	speed = -speed


func _on_playerdetector_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		die()

func die():
	pass
