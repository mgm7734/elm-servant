{ mkDerivation, aeson, base, containers, elm-bridge, persistent
, persistent-sqlite, persistent-template, servant, servant-elm
, servant-server, stdenv, text, transformers, wai, warp
}:
mkDerivation {
  pname = "myproj";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base containers elm-bridge persistent persistent-sqlite
    persistent-template servant servant-elm servant-server text
    transformers wai warp
  ];
  license = "unknown";
  hydraPlatforms = stdenv.lib.platforms.none;
}
