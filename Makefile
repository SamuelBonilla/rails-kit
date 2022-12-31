
server:
	rails s

migrate:
	rails db:migrate

rdbg:
	bundle exec rdbg --open -n -c -- bundle exec rails s

reset-db:
	rails db:drop db:create db:migrate db:seed

