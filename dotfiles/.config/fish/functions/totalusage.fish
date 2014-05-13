function totalusage
	df -hl --total | grep total $argv; 
end
