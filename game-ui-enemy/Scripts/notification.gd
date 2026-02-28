extends CanvasLayer

@onready var label = $Label
@onready var timer = $Timer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	timer.timeout.connect(_on_timer_timeout)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func show_notification(text: String, duration:float = 2.0):
	label.text = text
	show()
	timer.start(duration)
	
func _on_timer_timeout():
	hide()
