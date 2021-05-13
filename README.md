# Ode

Ode is a terminal based clone of the board game Onitama.

## Usage

You need Esy, you can install the beta using [npm](https://npmjs.com):

    % yarn global install esy

> NOTE: Make sure `esy --version` returns at least `0.5.4` for this project to build.

Then run the `esy` command from this project root to install and build dependencies.

    % esy

And test compiled executable (runs `scripts.tests` specified in
`package.json`):

    % esy test

Documentation for the libraries in the project can be generated with (runs
`scripts.doc` specified in `package.json`):

    % esy doc
    % esy open '#{self.target_dir}/default/_doc/_html/index.html'

Shell into environment:

    % esy shell

## Create Prebuilt Release:

`esy` allows creating prebuilt binary packages for your current platform, with
no dependencies.

    % esy npm-release
    % cd _release
    % npm publish
