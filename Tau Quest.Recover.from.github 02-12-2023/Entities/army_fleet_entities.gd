extends CharacterBody2D

@export var selected = false
@onready var box = get_node("Selection_Box")
@onready var target = position
@onready var group = []

var follow_cursor = false
var speed = 100
var belong_to_player_x

@export var can_move = true 
var can_set_turn_starting_position = true #not in use

var starting_position = self.position #not in use
var previous_position = self.position
var new_position 
var distance_between_positions 
var distance_between_positions_length
var distance_travelled = 0
@export var distance_travelled_limit = 500 


### Unit Stat Vars





@onready var timer = $Timer


func _on_timer_timeout():
	print("Distance Tick")
	new_position = position
	distance_between_positions =+ new_position - previous_position
	#print("Previous Position",previous_position)
	previous_position = position
	#print ("distance travelled",distance_between_positions)
	#print ("new position", new_position)
	#print ("distance_between_positions.length", distance_between_positions.length())
	distance_between_positions_length = (distance_between_positions.length())
	distance_travelled += distance_between_positions_length
	#print("distance_travelled", distance_travelled)
	

func _ready():
	set_selected(selected)
	add_to_group("units", true)

func _process(delta):
	if distance_travelled > distance_travelled_limit:
		can_move = false
	if is_in_group("units") == true:
		#print("I, The Fleet Entity, am considered a unit")
		pass

	
func set_selected(value):
	selected = value
	box.visible = value

func _input(event):
	if event.is_action_pressed("RightClick"):
		follow_cursor = true
	if event.is_action_released("RightClick"):
		follow_cursor = false
		
func _physics_process(delta):
	if follow_cursor == true and selected:
			target = get_global_mouse_position()
			#look_at(target)
	velocity = position.direction_to(target)*speed
	if position.distance_to(target) > 15 and can_move == true:
		move_and_slide()
	else:
		pass


func _on_button_button_down():
	distance_travelled = 0
	print("Distance Reset")
	can_move = true
