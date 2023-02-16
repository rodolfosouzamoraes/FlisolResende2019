extends Area2D



func _on_Estaca_body_entered(body):
	if(body.name == "Player"):
		body.Pulo()
		get_parent().AtualizaVidas()
	pass # Replace with function body.
