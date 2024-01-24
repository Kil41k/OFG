extends Node

var config
var path_to_save_file := "user://OFG.cfg"
var section_name := "game"

var money = 0
var damage = 10
var enemyHealth = 100 

func _ready() ->void:
	load_game()
	
func save_game():
	config.set_value(section_name, "money", money)
	config.set_value(section_name, "damage", damage)
	config.set_value(section_name, "money", money)
	
	config.save(path_to_save_file)

func load_game():
	config = ConfigFile.new()
	config.load(path_to_save_file)
	money = config.get_value(section_name, "money", 0)
	damage = config.get_value(section_name, "damage", 10)
	enemyHealth = config.get_value(section_name, "enemyHealth", 100)
	
