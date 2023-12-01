extends CanvasLayer

# Spawn Option Vars

signal local_fleet_entity_spawn_request

# Menu Vars

# Player Vars

# Econ Vars

# Economic UI Code Vars

# End Turn Code Vars

# Bottom_UI_Vars

var taus_location = Vector2(0,0)
var distance_from_tau_string = (var_to_str(taus_location))

# End of Vars

func _ready():
	pass

# bottom UI Code

func _physics_process(delta):
	distance_from_tau_string = (var_to_str($"../ViewCamera".position))
	$Bottom_UI_Panel/RichTextLabel.text = distance_from_tau_string

		#every 500 pixels = 1 light year?
		#VERY VERY BAD CODE, it does what i want it to do but updating every frame is a bit of a BLEH

# Spawn Option 

func _on_spawn_option_button_toggled(button_pressed):
	print(button_pressed)
	if button_pressed == true:
		$Spawn_Option_Button/Panel.visible = true
	else:
		$Spawn_Option_Button/Panel.visible = false

func _on_fleet_spawn_button_toggled(button_pressed):
	if button_pressed == true:
		print(button_pressed)
		emit_signal("local_fleet_entity_spawn_request")
		#var spawn_fleet = system_entities_scene.instantiate() as CharacterBody2D
		#spawn_fleet.position = $"../ViewCamera".position
		
	
func _on_system_spawn_button_toggled(button_pressed):
	pass # Replace with function body.

func _on_close_spawn_menu_pressed():
	$Spawn_Option_Button/Panel.visible = false
	


# Menu Options





# Player Options





# Econ Options







# Economic UI Code







# End Turn Code











