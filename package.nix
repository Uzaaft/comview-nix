{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "comview";
  version = "0-unstable-2026-06-08";

  src = fetchFromGitHub {
    owner = "rockorager";
    repo = "comview";
    rev = "08a35f43a467783015ff12557ac02c0e30004e2f";
    hash = "sha256-4zu6PKXRcf1j0Bavql/i/apyJt4ArhnMgW2jqAoBazs=";
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
