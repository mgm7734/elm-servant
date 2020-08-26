run: client-build
	cabal run server

server-build:
	cabal build server

client-build: client/src/Api.elm

client/src/Api.elm: server/src/Api.hs
	cabal run generate-elm
