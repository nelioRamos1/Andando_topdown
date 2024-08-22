extends CharacterBody2D

@export var speed = 100
@onready var anim: AnimatedSprite2D = $anim



func get_input():
	var input_direction = Input.get_vector("baixo", "cima", "esquerda", "direita")
	velocity = input_direction * speed
	
	if Input.is_action_pressed("direita"):
		anim.play("andando")
		anim.flip_h = false
		
		
	elif Input.is_action_pressed("esquerda"):
		anim.play("andando")
		anim.flip_h = true
		
	else:
		anim.play("parado")

func _physics_process(delta):
	
	
	get_input()
	move_and_slide()
