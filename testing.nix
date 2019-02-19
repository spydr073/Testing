{ build-idris-package
, prelude
, base
, lib
, terminal
, idris
}:

build-idris-package {
  name    = "terminal";
  version = "0.1";
  src = ./.;

  #buildDepends = [];
  idrisDeps = [ terminal ];
  propagatedBuildInputs = [ prelude base ];

  meta = {
    description = "Simple program testing for Idris";
    license     = "WTFPL";
    maintainers = "spydr073";
  };

}


