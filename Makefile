run: static-files/index.html
	cabal run server

server-build:
	cabal build server

static-files/index.html: client/src/Api.elm 
	cd client; elm make src/Main.elm
	mkdir -p static-files
	mv client/index.html static-files/


client/src/Api.elm: client/GenerateElm.hs server/src/Api.hs
	cabal run generate-elm
