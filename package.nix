{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "comview";
  version = "0-unstable-2026-06-19";

  src = fetchFromGitHub {
    owner = "rockorager";
    repo = "comview";
    rev = "816d5320152dd4c3b43f5c4422ab69136d82b931";
    hash = "sha256-9lpPCe0cSBnBzlIfBF13/jk9TlqUpHy507pTHD90/Bg=";
  };

  vendorHash = "sha256-f7Q4+Bd22xnxkOWjgv4TzPmgZTNHhYvMtoVyl9anGzc=";

  subPackages = [ "cmd/comview" ];

  meta = {
    description = "Terminal commit review tool";
    homepage = "https://github.com/rockorager/comview";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "comview";
  };
}
