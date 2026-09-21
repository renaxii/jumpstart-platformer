extends Area2D

# Signal for when the checkpoint is triggered
signal checkpoint_triggered

func _ready():
	# Connect the body_entered signal to a function
	connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body):
	if body.is_in_group("player"):
		get_tree().root.get_node("Global").last_checkpoint = position
