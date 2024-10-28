extends CanvasLayer

@onready var label: Label = get_node("background/label")

var dialogue = [
	"'Looks like a normal Build-A-Bear to me...'",
	"'Going off the theme... myabe we have to craft something?'",
	"'Oooh! Leave it to me!'"
]

var dialogueindex = 0
var finished = false

func _ready():
	load_dialogue()

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialogue()
		
func load_dialogue():
	if dialogueindex < dialogue.size():
		label.text = dialogue[dialogueindex]
	else:
		queue_free()
	dialogueindex += 1	
#signal dialogue_finished
#
#enum State {
	#READY,
	#READING,
	#FINISHED
#}
#
#const CHAR_RATE = 0.075
#
#@onready var label: Label = get_node("background/label")
#@onready var bg: TextureRect = get_node("background")
#var state: State
#
#func _ready():
	#state = State.READY
#
#func _process(delta):
	#match state:
		#State.READING:
			#if Input.is_action_just_pressed("ui_select"):
				#_finish()
		#State.FINISHED:
			#if Input.is_action_just_pressed("ui_select"):
				#_hide()
				#dialogue_finished.emit()
				#state = State.READY
#
#func _hide():
	#label.text = "hi"
	#label.visible_ratio = 0
	#bg.visible = false
#
#func _show():
	#bg.visible = true
#
#func _finish():
	#label.visible_ratio = 1
	#state = State.FINISHED
#
#func _display_dialogue(lines):
	#if state != State.READY:
		#return
	#label.text = lines
	#_show()
	#state = State.READING
