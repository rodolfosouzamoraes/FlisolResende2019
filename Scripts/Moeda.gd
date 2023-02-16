extends Area2D




func _on_Moeda_body_entered(body):
	if(body.name == "Player"):
		get_parent().SomMoeda()
		get_parent().AtualizaMoedas()
		queue_free()
	pass # Replace with function body.
