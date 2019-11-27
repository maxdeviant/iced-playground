with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "iced-playground";

  buildInputs = [
    stdenv
    pkg-config
    freetype
    x11
    xorg.libX11
    xorg.libXcursor
    xorg.libXi
    xorg.libXrandr
  ];

  LD_LIBRARY_PATH = "${lib.makeLibraryPath [ vulkan-loader x11 xorg.libX11 xorg.libXcursor xorg.libXi xorg.libXrandr ]}";
}
