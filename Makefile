lint: test_web lint_web
lint_web:
	bundle exec rubocop --auto-correct
test_web:
	bundle exec rails test