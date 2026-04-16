{ pkgs, ... }: {
  packages = [
    pkgs.nodejs
    pkgs.cypress
  ];

  enterShell = ''
    export CYPRESS_INSTALL_BINARY=0
    export CYPRESS_RUN_BINARY="${pkgs.cypress}/bin/Cypress"
  '';
}
