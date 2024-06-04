extends Control

@onready var gre = preload("res://InheritedScenes/Interface/TitleGrenade.tscn")

func _ready():
	$AnimationPlayer.play("Intro")

func spawn(numb:int):
	var greInst = gre.instantiate()
	get_node("Grenades/"+str(numb)).add_child(greInst)

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Intro":
		$AnimationPlayer.play("Intro2")
	if anim_name == "Intro2":
		$AnimationPlayer.play("Intro3")
	if anim_name == "Intro3":
		$AnimationPlayer.play("Titel")
		$Army/AnimationPlayer.play("Army")
		$AnimationPlayer2.play("Grenades")
		$Menu/Start.grab_focus()
