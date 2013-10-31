function psmem10
	ps auxf | sort -nr -k 4 | head -10 $argv; 
end
