extends Node2D


var fleet_scene = preload("res://Entities/army_fleet_entities.tscn")
var system_scene = preload("res://Entities/system_entities.tscn")


func _ready():
	var selection_manager_path = get_node("/root/Main/MainMapUI/Selection_Manager")
	selection_manager_path.get_units() 
#This tells the selection_manager to remember all units that exist in the game

func _on_main_map_ui_local_to_main_fleet_entity_spawn_request():
	#print("I am noticing a fleet spawn request from the MainMapUI")
	var unitPath #??? what the fuck is this for? - Spore 02/12/2023
	var selection_manager_path = get_node("/root/Main/MainMapUI/Selection_Manager") # We need to call this path so we can trigger the "get 
	var spawn_fleet = fleet_scene.instantiate()
	$"../Units_Fleets_Entities".add_child(spawn_fleet)
	selection_manager_path.get_units()
#add_to_group("units", true) #Selection code will not work unless a entity is in the unit group


func _on_main_map_ui_local_to_main_system_entity_spawn_request():
	var selection_manager_path = get_node("/root/Main/MainMapUI/Selection_Manager") # We need to call this path so we can trigger the "get 
	var spawn_system = system_scene.instantiate()
	$"../Planets_Systems_Entities".add_child(spawn_system)
	selection_manager_path.get_units()
#add_to_group("units", true) #Selection code will not work unless a entity is in the unit group
