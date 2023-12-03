extends CharacterBody2D

@export var selected = false
@onready var box = get_node("Selection_Box")
@onready var target = position

var follow_cursor = false
var speed = 100
var belong_to_player_x 
var locked = false

func _process(delta):
	pass


func _ready():
	set_selected(selected)
	
func set_selected(value):
	selected = value
	box.visible = value

func _input(event):
	if event.is_action_pressed("RightClick"):
		follow_cursor = true
	if event.is_action_released("RightClick"):
		follow_cursor = false
		
func _physics_process(delta):
	if follow_cursor == true and selected and locked == false:
			target = get_global_mouse_position()
			#look_at(target)
	velocity = position.direction_to(target)*speed
	if position.distance_to(target) > 15:
		move_and_slide()
	else:
		pass
		


func _on_check_button_toggled(button_pressed):
	locked = button_pressed
