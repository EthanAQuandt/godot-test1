extends Node

@onready var score_label: Label = $scoreLabel

var score = 0

func add_point():
	score += 1
	score_label.text = "you collected " + str(score) + " coins"
