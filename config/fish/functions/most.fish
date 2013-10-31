function most
	du -hsx * | sort -rh | head -10 $argv; 
end
