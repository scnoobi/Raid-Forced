extends Node3D

const FIREBALL_COIN = preload("res://Scenes/fireball coin.tscn");
@onready var gobot = $"../gobot"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		
		var ability = FIREBALL_COIN.instantiate()
		
		ability.top_level = true;
		ability.position = gobot.basis.z.normalized() + gobot.position;
		
		
		get_parent().add_child(ability);
		add_to_group("derp")
		
		
		
		
		
		
	
