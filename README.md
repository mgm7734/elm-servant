# notes
https://github.com/Gabriel439/haskell-nix/tree/master/project0
https://mpickering.github.io/ide/posts/2020-06-05-ghcide-and-nixpkgs.html

nix-shell -A env
cabal2nix . > hello-cabalnix.nix

Built ok with:
$ nix-instantiate --eval --expr 'builtins.readFile <nixpkgs/.git-revision>'
"6eadc11005318fc4eef7da19898cff51689fb723"
