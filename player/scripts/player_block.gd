class_name player extends CharacterBody2D


var acceleration : float = 200.0
var direction : Vector2 = Vector2.ZERO



func _ready() -> void:
	pass
	
	# Called frame per frame
func _process(delta: float) -> void: 
	
	direction.x = Input.get_action_strength("movePlayerBlockRight") - Input.get_action_strength("movePlayerBlockLeft")
	 
	velocity = direction * acceleration
	
	pass

	# Has different clock tik from the frames
func _physics_process(delta: float) -> void:
	move_and_slide()
