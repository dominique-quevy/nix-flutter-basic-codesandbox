with import <nixpkgs> {};
 
stdenv.mkDerivation {
    name = "csb";
    buildInputs = [
        flutter 
        # chromium
    ];
    shellHook = ''
        export ROOT_FLUTTER="/nix/store/gxjjq4mlvcpqaxj3sfvy7gnv2pwqs1ri-flutter-3.3.8"
        export ROOT_DART_SDK="/nix/store/gxjjq4mlvcpqaxj3sfvy7gnv2pwqs1ri-flutter-3.3.8/bin/cache/dart-sdk"
        export ROOT_CHROMIUM="/nix/store/1wd0wdakqll127nf87ldbvpxppi7sry5-chromium-111.0.5563.64"
        export CHROME_EXECUTABLE="$ROOT_CHROMIUM/bin/chromium-browser"
        export ROOT_USER="/project/home/dominique-quevy/workspace"
        export ROOT_PROJECT="$ROOT_USER/flutter_project"
        export LIB_PROJECT="$ROOT_PROJECT/lib"
        export BUILD_PROJECT="$ROOT_PROJECT/build/web"
        export PATH="$ROOT_FLUTTER/bin:$ROOT_DART_SDK/bin:$ROOT_PROJECT:$ROOT_USER:$PATH"
    '';
}