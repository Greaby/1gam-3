extends Control

var selected_index = null

func _ready():
    for index in $Cards.get_child_count():
        $Cards.get_child(index).get_node("Button").connect('pressed', self, "_toggle_selected", [index])
        

func _toggle_selected(index):
    if(selected_index != null):
        $Cards.get_child(selected_index).get_node("AnimationPlayer").play("unselect")
    
    if(selected_index == index):
        selected_index = null
    else:
        selected_index = index
        $Cards.get_child(selected_index).get_node("AnimationPlayer").play("select")
        
    print(selected_index)