.ONESHELL:
adds:
	export directories=$$(find . -maxdepth 2 -type d)
	IFS=$$'\n'
	for dir in $$directories; do
		if [[ "$$dir" =~ \./\..* ]]; then
			continue
		fi
		if [ "$$dir" != ".." ] && [[ "$$dir" =~ \./.*/ ]]; then
			echo "Processing directory: $$dir"
			ctf challenge add "$$dir"
		fi
	done
.ONESHELL:
installs:
	export directories=$$(find . -maxdepth 2 -type d)
	IFS=$$'\n'
	for dir in $$directories; do
		if [[ "$$dir" =~ \./\..* ]]; then
			continue
		fi
		if [ "$$dir" != ".." ] && [[ "$$dir" =~ \./.*/ ]]; then
			echo "Processing directory: $$dir"
			ctf challenge install "$$dir"
		fi
	done

.ONESHELL:
syncs:
	export directories=$$(find . -maxdepth 2 -type d)
	IFS=$$'\n'
	for dir in $$directories; do
		if [[ "$$dir" =~ \./\..* ]]; then
			continue
		fi
		if [ "$$dir" != ".." ] && [[ "$$dir" =~ \./.*/ ]]; then
			echo "Processing directory: $$dir"
			ctf challenge sync "$$dir"
		fi
	done

