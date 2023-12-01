extends Node2D


var system_fleet_scene = preload("res://Entities/army_fleet_entities.tscn")



func _on_main_map_ui_local_to_main_fleet_entity_spawn_request():
	print("I am noticing a fleet spawn request from the MainMapUI")
	var spawn_fleet = system_fleet_scene.instantiate()
	$"../Units_Fleets_Entities".add_child(spawn_fleet)
#add_to_group("units", true) #Selection code will not work unless a entity is in the unit group

