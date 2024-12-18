# Pythonrc (executes at python startup)

import atexit
import os
import readline
from pathlib import Path


# Redirect annoying python history in $HOME (solution from xdg-ninja)
# ------------------------------------------------------------------------------
if readline.get_current_history_length() == 0:
	data_home = os.environ.get("XDG_DATA_HOME")
	if data_home is None:
		data_home = Path.home() / ".local" / "share"
	else:
		data_home = Path(data_home)

	history_path = data_home / "python" / "python_history"
	if history_path.is_dir():
		raise OSError(f"'{history_path}' cannot be a directory")

	history = str(history_path)

	try:
		readline.read_history_file(history)
	except OSError:
		pass

	def write_history():
		try:
			readline.write_history_file(history)
		except OSError:
			pass
	atexit.register(write_history)

