{ mkDerivation, aeson, base, containers, elm-bridge, servant
, servant-elm, servant-server, stdenv, text, transformers, wai
, warp
}:
mkDerivation {
  pname = "hello-cabalnix";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base containers elm-bridge servant servant-elm servant-server
    text transformers wai warp
  ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
