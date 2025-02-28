FROM gitpod/workspace-full

RUN brew install scala

RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.0.4/2.13-2.0.4) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm'

RUN brew install sbt

RUN brew install scalaenv

RUN brew install coursier/formulas/coursier

RUN sudo env "PATH=$PATH" coursier bootstrap org.scalameta:scalafmt-cli_2.12:2.4.2   -r sonatype:snapshots   -o /usr/local/bin/scalafmt --standalone --main org.scalafmt.cli.Cli
