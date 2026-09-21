extends Area2D

@export var end_screen_scene: PackedScene

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	print("Touched by: ", body.name)

	if body.is_in_group("Player"):
		print("PLAYER GROUP DETECTED")

		if end_screen_scene != null:
			print("Changing to end screen...")
			get_tree().change_scene_to_packed(end_screen_scene)
		else:
			print("ERROR: end_screen_scene is EMPTY!")
