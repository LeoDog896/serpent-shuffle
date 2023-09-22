extends Node2D

var speed = 3  # speed in pixels/sec
var velocity = Vector2.ZERO

@export var grid: Node2D
@onready var camera = $Camera

func _ready():
	position = grid.size / 2
	camera.limit_right = grid.size.x
	camera.limit_bottom = grid.size.y

func get_input():
	if Input.is_action_pressed('right'):
		velocity.x = 1
	if Input.is_action_pressed('left'):
		velocity.x = 1
	if Input.is_action_pressed('down'):
		velocity.x = 0
		velocity.y = -1
	if Input.is_action_pressed('up'):
		velocity.x = 0
		velocity.y = 1

func _physics_process(delta):
	get_input()
	position += velocity
