with import <nixpkgs>{};

stdenv.mkDerivation rec {
  name = "i3lock-pixeled-${version}";
  version = "1.1.0";

  src = ./.;

  buildInputs = with pkgs; [ i3lock imagemagick scrot playerctl ];
  buildPhases = [ "unpackPhase" "installPhase" ];
  makeFlags = [ "PREFIX=$(out)/bin" ];
}
