with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "i3lock-pixeled-dev";
  src = ./.;

  buildInputs = [ i3lock imagemagick scrot playerctl swaylock ];
}
