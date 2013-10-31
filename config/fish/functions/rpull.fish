function rpull
	git pull --rebase; and bundle; and bundle exec rake db:migrate
end
