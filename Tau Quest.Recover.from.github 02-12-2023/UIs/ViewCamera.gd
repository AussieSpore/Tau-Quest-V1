extends Camera2D

func _process(delta):
	var direction = Input.get_vector("left","right","up","down")
	position += direction * 500 * delta
	

	
