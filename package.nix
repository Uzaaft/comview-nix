{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "comview";
  version = "0-unstable-2026-05-14";

  src = fetchFromGitHub {
    owner = "rockorager";
    repo = "comview";
    rev = "b824b96e567f8b9188721f7939907798bb9be0fc";
    hash = "sha256-HhZpkzJX943V/PmqeK2YpEhyKADQE4pEMoN+YJg+bcA=";
  };

  vendorHash = "sha256-dy4FHHfTuz3lzfM4pC0dQjcALVgEk6PRSTvfHLhGjv4=";

  subPackages = [ "cmd/comview" ];

  meta = {
    description = "Terminal commit review tool";
    homepage = "https://github.com/rockorager/comview";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ];
    mainProgram = "comview";
  };
}
