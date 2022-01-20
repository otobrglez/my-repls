with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "my-repls";
    buildInputs = [
       ruby
       nodejs-16_x
       scala-cli
       jdk17_headless
       sbt
    ];
    shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"

        # Ruby
        mkdir -p /tmp/dev-ruby-gems
        export GEM_HOME="/tmp/dev-ruby-gems"
        export GEM_PATH="$GEM_HOME:$PWD/lib"
        export PATH="$GEM_HOME/bin:$PATH"
        BUNDLE="$GEM_HOME/bin/bundle"
        [ ! -x "$BUNDLE" ] && ${pkgs.ruby}/bin/gem install bundler

        $BUNDLE install
        export RUBYOPT=-rpry dbundle
        # export RUBYOPT=-rbundler/setup
    '';
}
