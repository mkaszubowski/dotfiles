function psmem
	ps auxf | sort -nr -k 4 $argv; 
end
