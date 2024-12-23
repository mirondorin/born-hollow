extends Node2D

const SERVER_PORT = 25000
const MAX_CLIENTS = 4


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var peer = ENetMultiplayerPeer.new()
	peer.create_server(SERVER_PORT, MAX_CLIENTS)
	multiplayer.multiplayer_peer = peer
