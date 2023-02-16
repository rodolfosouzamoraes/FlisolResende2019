extends KinematicBody2D

const POSICAO_CHAO = Vector2(0,-1)
const GRAVIDADE = 20
const VELOCIDADE = 200
const FORCA_PULO = 580

var movimento = Vector2()

func _physics_process(delta):
	movimento.y += GRAVIDADE
	
	if (Input.is_action_pressed("direita")):
		movimento.x = VELOCIDADE
		$Sprite.play("run")
		$Sprite.flip_h = false
	elif(Input.is_action_pressed("esquerda")):
		movimento.x = -VELOCIDADE
		$Sprite.play("run")
		$Sprite.flip_h = true
	else:
		movimento.x = 0
		$Sprite.play("idle")
	
	if (is_on_floor()):
		if (Input.is_action_pressed("pular")):
			movimento.y = - FORCA_PULO
			$Pulo.play(0)
	else:
		$Sprite.play("jump")
	movimento = move_and_slide(movimento,POSICAO_CHAO)
	
func Pulo():
	$Dano.play(0)
	movimento.y = - FORCA_PULO
	movimento = move_and_slide(movimento,POSICAO_CHAO)

