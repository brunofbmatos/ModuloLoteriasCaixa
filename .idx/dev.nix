{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    # Ferramentas de desenvolvimento
    #nodeJs
    #yarn
    # Editores de texto
    vim
    # PowerShell e suas dependências (ajuste conforme necessário)
    powershell_7.4  
    #dotnet5
  ];
  shellHook = ''
    # Scripts a serem executados ao iniciar o shell
  '';
}