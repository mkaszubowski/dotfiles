function gpumeminfo
	grep -i --color memory /var/log/Xorg.0.log $argv; 
end
