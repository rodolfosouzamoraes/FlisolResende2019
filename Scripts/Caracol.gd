extends StaticBody2D

var flip = false
var velocidade = 0.3

func _ready():
	$Sprite.play("run")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(flip):
		$".".position.x -= velocidade
		$Sprite.flip_h = false
	if(!flip):
		$".".position.x += velocidade
		$Sprite.flip_h = true
	pass

func Flip():
	flip = !flip


func _on_Pe_body_exited(body):
	Flip()
	pass # Replace with function body.


func _on_Casco_body_entered(body):
	if(body.name == "Player"):
		velocidade = 0
		$Sprite.play("dead")
		$Corpo.queue_free()
		$Casco.queue_free()
		$Pe.queue_free()
		get_parent().AtualizaCaracol()
	pass # Replace with function body.
