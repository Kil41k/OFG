extends Node2D


@onready var hpLabel = $HP
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	hpLabel.text = str(Global.enemyHealth)
	if Global.enemyHealth <= 0:
		queue_free()

func _on_hit_button_up():
	Global.enemyHealth -= Global.damage
