homebrew-marija
===============
[![Build Status](https://travis-ci.org/dutchcoders/homebrew-marija.svg?branch=master)](https://travis-ci.org/dutchcoders/homebrew-marija)

Homebrew formula for marija.

## Usage

```bash
$ brew tap dutchcoders/homebrew-marija
$ brew install marija
```

## Troubleshooting

* Make sure you're using the right formula.  `brew info marija` should have a
  From line similar to this:

  ```text
  From: https://github.com/dutchcoders/homebrew-marija/blob/master/Formula/marija.rb
  ```

  If your formula points elsewhere, then you need to retap the marija formula.
  Do so with the following sequence of commands:

  ```text
  brew uninstall marija --force
  brew prune
  brew tap dutchcoders/homebrew-marija
  brew tap --repair
  brew install marija
  ```
* Run `brew update` — then try again.
* Run `brew doctor` — the doctor diagnoses common issues.
* You can create a gist log with `brew gist-logs marija`.
* Use `--verbose` to get the verbose output, i.e. `brew install --verbose marija`.
* Use `--debug` to be in the debug mode. In the debug mode, when failing, you
  can go into the interactive shell to check the building files before homebrew
  neutralizing them.
