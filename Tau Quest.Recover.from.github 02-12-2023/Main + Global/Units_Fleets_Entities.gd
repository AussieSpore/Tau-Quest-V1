extends Node2D

var children 

func _ready():
	add_to_group("units", true)
	
func _process(delta):
	if is_in_group("units") == true:
		#print("I, The Unit_Fleet_Entities 2D Node Manager Am considered a unit")
