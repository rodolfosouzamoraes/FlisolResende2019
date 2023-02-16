extends Node

var moedasJogador = 0
var caracoisMortos = 0
var vidasPersonagem = 3

func AtualizaMoedas():
	moedasJogador +=1
	$CanvasLayer/Moeda.text = str(moedasJogador)

func AtualizaCaracol():
	$PackSons/Caracol.play(0)
	caracoisMortos +=1
	$CanvasLayer/Caracol.text = str(caracoisMortos)

func AtualizaVidas():
	vidasPersonagem -=1
	if(vidasPersonagem>1):
		$CanvasLayer/vida_v3.queue_free()
	elif(vidasPersonagem>0):
		$CanvasLayer/vida_v2.queue_free()
	else:
		get_tree().reload_current_scene()

func SomMoeda():
	$PackSons/Moeda.play(0)

