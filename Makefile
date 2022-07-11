run: setup test build

########################
# install dependencies #
#######################
setup:
	bun install

#############
# run tests #
#############
test:
	bun run test

###################
# build artifacts #
###################
build:
	bun run build

####################################
# deploy the application to fly.io #
####################################
deploy: deploy.dev

deploy.dev:
	fly deploy --config ./fly.dev.toml

deploy.prod:
	fly deploy --config ./fly.prod.toml

#########################
# start the application #
#########################
start: start.dev

start.dev:
	bun run dev
