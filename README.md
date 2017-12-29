i3lock-pixeled
==============

`i3lock-pixeled` is a simple helper written in `bash` to pixelate a screenshot and use
this as background image for the lock screen.

![i3lock-pixeled Example](screen.png)

## Install

### Prerequisites

- `i3lock` (or `swaylock` for instance)
- `scrot` to take a background image
- `imagemagick` to pixelate the background image
- (optional: `playerctl` to pause the currently used players)

### Manually

Clone the repository using the following command:

```
wget https://github.com/Ma27/i3lock-pixeled/archive/1.1.0.tar.gz -O i3lock-pixeled-1.1.0.tar.gz
tar -xzvf i3lock-pixeled-1.1.0.tar.gz
cd i3lock-pixeled-1.1.0
```

Install it into `/usr/local/bin`:

```
sudo make install
```

Now the executable is accessible in `/usr/local/bin/i3lock-pixeled`.
However if you'd like to place it in a different directory, you can set the `PREFIX` var:

```
make install PREFIX=/custom/install/target
```

### Nix

`i3lock-pixeled` is available in the `nixpkgs` package set (see [NixOS/nixpkgs#25761](https://github.com/NixOS/nixpkgs/pull/25761)).

Now you can install it by running `nix-env -iA nixpkgs.i3lock-pixeled`.

## Uninstall

The `Makefile` contains an `uninstall` recipe as well which removes the `i3lock-pixeled` executablefrom the given prefix.

## Hacking

The project is `bash`-based, so it's sufficient to install all needed prerequisites or open a developer
shell by running `nix-shell`.

## License

The project is bundled with the `MIT` license. Please refer to the [`LICENSE`](https://github.com/Ma27/i3lock-pixeled/blob/master/LICENSE) file that was distributed with the source code.
