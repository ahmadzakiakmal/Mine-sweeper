extends TextureButton

var has_mine = false
var is_revealed = false
var is_flagged = false

var neighboring_mines = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var mine_count_label = $Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if has_mine:
		self.texture_normal = preload("res://Assets/Mine.png")
	pass

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and not is_revealed:
		if event.button_index == 2: 
			# and event.pressed and not is_revealed:
			is_flagged = true
			self.texture_normal = preload("res://Assets/Flag.png")

func _on_button_up() -> void:
	randomize()
	is_revealed = true
	if has_mine:
		self.texture_normal = preload("res://Assets/Mine.png")	
		return
	self.texture_normal = preload("res://Assets/Empty.png")
	mine_count_label.text = str(randi_range(1, 8))
	pass # Replace with function body.
