# Defined in /Users/maciej/.config/fish/functions/kcop.fish @ line 1
function kcop
	kubectl --context=kingschat -n production $argv;
end
