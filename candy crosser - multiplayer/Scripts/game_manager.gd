extends Node
var score = 0
@onready var score_label = $scoreboard/Label
func _ready() -> void:
	score_label.text =  "x " + str(score)
	
func add_point():
	score += 1
	score_label.text =  "x " + str(score)
	
	
