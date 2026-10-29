{
  description = "qu1ncyry4n.github.io — Zola site";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { nixpkgs, ... }:
    let
      forAllSystems = nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" ];
    in {
      devShells = forAllSystems (system:
        let pkgs = nixpkgs.legacyPackages.${system}; in {
          default = pkgs.mkShell {
            # Rust from the shared nixpkgs pin (nix-config docs/rust-toolchain.md).
            packages = with pkgs; [ zola cargo rustc rustfmt clippy ];
          };
        });
    };
}
