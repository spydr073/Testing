
with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "testing-env";

  #-- alias idris to set path and load packages
  shellHook = ''
    idrisHook() { idris -i./src -p terminal "$@"; }
    alias idr=idrisHook
  '';

}



