extends Area2D

export(String, FILE, "*.tscn") var cenas


func _on_ProximaFase_body_entered(body):
	if(body.name=="Player"):
		var global = get_node("/root/Global")
		global.moedasJogador = get_parent().moedasJogador
		global.vidasJogador = get_parent().vidasPersonagem
		global.caracoisMortos = get_parent().caracoisMortos
		get_tree().change_scene(cenas)
	pass # Replace with function body.
