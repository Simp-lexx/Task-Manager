install:
	npm install

start:
	DEBUG="application:*" npx nodemon --watch .  --ext '.js,.pug' --exec npx gulp -- server
	# DEBUG="application:*" npx nodemon --exec "npx babel-node -- index.js"

pack:
	npm run webpack --display-error-details

lint:
	npx eslint -- src test.

build:
	rm -rf dist
	npm run build

dev:
	npm run dev

test:
	npm test

test-coverage:
	npm test -- --coverage

hlogs:
	heroku logs --tail
