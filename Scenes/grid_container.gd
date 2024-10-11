extends GridContainer

var cells = []
var mine_count = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cells = get_children()
	print(cells)
	
	cells.shuffle()

	# Assign mines to the first mine_count cells
	for i in range(mine_count):
		var cell = cells[i]
		cell.has_mine = true  # Set the mine property on the cell
		print("Mine placed in cell: ", i)

	# Optional: Ensure other cells do not have mines
	for i in range(mine_count, cells.size()):
		var cell = cells[i]
		cell.has_mine = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
