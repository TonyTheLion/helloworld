{
  nixpkgs ? <nixpkgs>,
  helloworldSrc ? { rev = 0;},
  officialRelease ? false,
  systems ? [ "i686-linux" "x86_64-linux" ] 
}:

let 
   pkgs = import nixpkgs { };
   jobs = rec {
	build = {
   		helloworld = pkgs.callPackage ./default.nix {}; 
	};
   };
in jobs

