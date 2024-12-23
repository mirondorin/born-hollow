extends Node


func _ready() -> void:
	Lobby.player_loaded.rpc_id(1) # Tell the server that this peer has loaded.


func start_game() -> void:
	Lobby.load_game("")


func _on_host_button_pressed() -> void:
	Lobby.create_game()


func _on_join_button_pressed() -> void:
	Lobby.join_game()
