extends RigidBody2D



func _ready():
	$Timer.start(randf_range(1,1.6))

func _on_timer_timeout():
	if !$AnimatedSprite2D.visible:
		sleeping = true
		$Sprite2D.visible = false
		$AnimatedSprite2D.visible = true
		$AnimatedSprite2D.play("default",2)
		$Timer.start(1.06)
	else:
		queue_free()
