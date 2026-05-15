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
    rev = "d87ba30b4236ce5ef91cae0118969e835c11472b";
    hash = "sha256-s5sxYvWhJzMQ9qa4T0jlk89eR+fwpKyUeFqFKlGLnRc=";
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
