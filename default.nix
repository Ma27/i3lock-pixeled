with import <nixpkgs>{};

stdenv.mkDerivation rec {
  name = "i3lock-pixeled-${version}";
  version = "1.0.0";

  src = ./.;

  buildInputs = [ pkgs.i3lock pkgs.imagemagick pkgs.scrot pkgs.playerctl ];
  buildPhases = [ "unpackPhase" "installPhase" ];
  makeFlags = [
    "PREFIX=$(out)/bin"
  ];
}
