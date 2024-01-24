extends Node2D

@onready var moneyLabel = $moneyLabel
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	moneyLabel.text = "$" + str(Global.money)
