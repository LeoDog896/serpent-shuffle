extends Node2D

@export var cells := 20
@export var color := Color(0, 0.49, 0.65)
@export var size := Vector2(2000, 2000)

func _draw() -> void:
	var cell_size = max(size.x, size.y) / cells

	for i in cells:
		for j in cells:
			var rect_pos = Vector2(cell_size * i, cell_size * j)
			var rect_size = Vector2(cell_size, cell_size)

			if (i + j) % 2 == 0:
				draw_rect(Rect2(rect_pos, rect_size), color)
