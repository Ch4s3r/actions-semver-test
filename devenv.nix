{ pkgs, ... }: {
  packages = [
    pkgs.nodejs
    pkgs.cypress
    pkgs.xvfb-run
  ];

  enterShell = ''
    export CYPRESS_INSTALL_BINARY=0
    export CYPRESS_RUN_BINARY="${pkgs.cypress}/bin/Cypress"
    export ELECTRON_DISABLE_SANDBOX=1
  '';
}
