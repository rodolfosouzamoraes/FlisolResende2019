extends Node

func _ready():
	var global = get_node("/root/Global")
	var moedasJogador = global.moedasJogador
	var caracoisMortos = global.caracoisMortos
	var vidasJogador = global.vidasJogador
	$TotalCaracol.text = str(caracoisMortos)
	$TotalMoeda.text = str(moedasJogador)
	
	if(vidasJogador<3 && moedasJogador<11 && caracoisMortos <3):
		$Ponto3.queue_free()
		$Ponto2.queue_free()
	elif(vidasJogador<3 || moedasJogador<11 || caracoisMortos <3):
		$Ponto3.queue_free()


func _on_Replay_pressed():
	get_tree().change_scene("res://Scenes/Fase1.tscn")
	pass # Replace with function body.
