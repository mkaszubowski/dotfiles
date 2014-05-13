function fish_command_not_found_handler --on-event fish_command_not_found
	/usr/lib/command-not-found $argv
			
end
