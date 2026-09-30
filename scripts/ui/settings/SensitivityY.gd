extends SpinBox

func upd():
	Rhythia.sensitivity_y = value

func _process(_d):
	if value != Rhythia.sensitivity_y: upd()

func _ready():
	value = Rhythia.sensitivity_y
	connect("changed",self,"upd")
