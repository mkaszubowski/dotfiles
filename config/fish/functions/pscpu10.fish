function pscpu10
	ps auxf | sort -nr -k 3 | head -10 $argv; 
end
