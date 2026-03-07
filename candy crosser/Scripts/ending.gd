extends Node2D

@onready var notificationMessage = $Notification
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	notificationMessage.show_notification("You've finally reached the end. Congrtatulations!!!!!!")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
