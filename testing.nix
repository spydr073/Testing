{ build-idris-package
, prelude
, base
, lib
, idris
, terminal
}:

build-idris-package {
  name    = "terminal";
  version = "0.1";
  src = ./.;

  buildDepends = [];
  idrisDeps = [ terminal ];
  propagatedBuildInputs = [ prelude base terminal ];

  meta = {
    description = "Simple program testing for Idris";
    license     = "WTFPL";
    maintainers = "spydr073";
  };

}


