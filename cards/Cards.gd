extends Control

var current_card = null

func _on_GreenCard_button_down():
    current_card = "green"

func _on_BlueCard_button_down():
    current_card = "blue"

func _on_RedCard_button_down():
    current_card = "red"

func _on_button_up():
    current_card = null
