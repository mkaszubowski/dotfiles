function pscpu
	ps auxf | sort -nr -k 3 $argv; 
end
