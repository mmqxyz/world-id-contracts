all: install build
# Install forge dependencies (not needed if submodules are already initialized).
install:; forge install && yarn install
# Build contracts and inject the Poseidon library.
build:; forge build && node ./src/test/scripts/generate-circom-lib.js
# Run tests, with debug information and gas reports.
test:; forge test -vvv --gas-report
# Update forge dependencies.
update:; forge update
