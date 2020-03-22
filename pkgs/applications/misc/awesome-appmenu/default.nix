{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  name = "awesome-appmenu";
  version = "0.4";

  src = fetchFromGitHub {
    owner = "montagdude";
    repo = "${name}";
    rev = "v${version}";
    sha256 = "0w1jjiclhm80s92aspgq0x076hj92nmj21kw0bnqbfmhlqvssk3l";
  };

  installPhase = ''
    
  ''


  meta = with stdenv.lib; {
    description = "Tool to create a menu of installed applications for the awesome window manager";
    longDescription = ''
     awesome-appmenu is a tool to create a menu of installed applications for the awesome window manager.
     It searches for and parses .desktop files to find the name, execution command, and icon of installed applications.
     These are then grouped into categories, sorted, and written to a lua script ($HOME/.config/awesome/appmenu.lua)
     that can be used in your awesome WM configuration script.
    '';
    homepage =  "https://github.com/montagdude/awesome-appmenu";
    license = licenses.gpl3;
    maintainers = with maintainers; [ jflabonte ];
    platforms = platforms.linux;
  };
}
