{
	system ? builtins.currentSystem
}:

with import <nixpkgs> { inherit system; };

stdenv.mkDerivation rec {
	name = "helloworld";
	env = buildEnv { name = name; paths = nativeBuildInputs; };
	src = ./.;
	nativeBuildInputs = [
		gcc
		];
	
	buildPhase = ''
		mkdir -p $out
		make
	'';

	installPhase = ''	
		cp ./hello.a $out/
	'';
}
