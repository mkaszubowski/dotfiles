# Defined in /Users/maciej/.config/fish/functions/kcop.fish @ line 6
function kcop-bash
	kubectl --context=kingschat -n production exec -it $argv bash;
end
