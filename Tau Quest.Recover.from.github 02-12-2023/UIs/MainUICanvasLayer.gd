extends CanvasLayer

# Spawn Option Vars

signal local_fleet_entity_spawn_request
signal local_system_entity_spawn_request

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
		print("Fleet_Spawn_Button_Is_true")
		emit_signal("local_fleet_entity_spawn_request")
	
func _on_system_spawn_button_toggled(button_pressed):
	if button_pressed == true:
		print("System_Spawn_Button_Is_true")
		emit_signal("local_system_entity_spawn_request")




# Menu Options





# Player Options





# Econ Options







# Economic UI Code







# End Turn Code











