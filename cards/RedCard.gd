extends TextureButton

enum COLORS {RED, BLUE, GREEN}
export (COLORS) var color = RED



func get_drag_data(pos):
    var preview = TextureRect.new()
    
    match color:
        RED:
            preview.texture = load("res://assets/cards1.png")
        BLUE:
            preview.texture = load("res://assets/cards2.png")
        GREEN:
            preview.texture = load("res://assets/cards3.png")
    
    set_drag_preview(preview)
    return color