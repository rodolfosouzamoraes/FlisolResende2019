extends Area2D



func _on_LimiteChao_body_entered(body):
	if(body.name == "Player"):
		get_tree().reload_current_scene()
	pass # Replace with function body.
