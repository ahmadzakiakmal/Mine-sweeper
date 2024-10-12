extends GridContainer

var CellScene : PackedScene = preload("res://Scenes/Cell.tscn")
var mine_count = 10  
var grid_size_x = 5  
var grid_size_y = 10  
var cells = []

func _ready() -> void:
	for y in range(grid_size_y):
		for x in range(grid_size_x):
			var cell_instance = CellScene.instantiate()  
			add_child(cell_instance)  
			cells.append(cell_instance)  
	
	assign_mines()


func assign_mines() -> void:
	cells.shuffle()  
	for i in range(mine_count):
		var cell = cells[i]
		cell.has_mine = true  
