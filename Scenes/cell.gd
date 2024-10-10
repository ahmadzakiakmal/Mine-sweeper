extends TextureButton

var has_mine = false
var is_revealed = false
var is_flagged = false

var neighboring_mines = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == 2: 
			# and event.pressed and not is_revealed:
			is_flagged = true
			self.texture_normal = preload("res://Assets/Flag.png")

func _on_button_up() -> void:
	is_revealed = true
	self.texture_normal = preload("res://Assets/2.png")
	pass # Replace with function body.
