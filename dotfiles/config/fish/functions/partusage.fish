function partusage
	df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs $argv; 
end
