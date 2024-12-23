extends Button

const IP_ADDRESS = "127.0.0.1"
const PORT = 8089


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	# Create client.
	var peer = ENetMultiplayerPeer.new()
	peer.create_client(IP_ADDRESS, PORT)
	multiplayer.multiplayer_peer = peer

	# Create server.
	#var peer = ENetMultiplayerPeer.new()
	#peer.create_server(PORT, MAX_CLIENTS)
	#multiplayer.multiplayer_peer = peer
