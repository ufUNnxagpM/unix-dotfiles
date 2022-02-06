
function mm() {
	# Play audio of a youtube video (first result)
	mpv --no-video --ytdl-format=bestaudio ytdl://ytsearch:"$@"
}

function iter() {
	# run a command over all
	iter_cmd=$1
	cmd=$2

	if (($#!=2)); then
		echo 'Usage: iter <data command> <execution command>'
		return 1
	fi

	for f in $(eval $iter_cmd); do
		echo "--- $f ---"
		eval $cmd $f
	done
}

function diter() {
	# run a command over all local disks
	cmd=$@
	data_cmd="df | grep -o '^/dev[^ ]*'"


	if (($#==0)); then
		echo 'Usage: diter <command here>'
		return 1
	fi

	iter "$data_cmd" "$cmd"
}
