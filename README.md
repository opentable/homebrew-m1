# Public OpenTable M1 Homebrew Formulae

This repository is OpenTable's public [Homebrew] [tap] provided as a convenience to install various tools built at OpenTable.

[tap]: https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md
[Homebrew]: https://brew.sh

## Usage

If you already know all there is to know about Homebrew taps, you probably don't
need to read any more. For those who aren't familiar, please read on.

### Requirements

Before using this tap, you need to [install Homebrew].
Then you should run 'brew update' to make sure you have the latest version.

[install Homebrew]: https://brew.sh


### Installing Software

Install the formula by using `brew install opentable/m1/<formula>`
Where `<formula>` is the name of one of the .rb files in the root of this repo,
minus the 'rb suffix. e.g.:

    $ brew install opentable/m1/librdkafka-1.8.2

This command will install [librdkafka-1.8.2] and set up your local `opentable/m1` tap
so that you receive updates in future.


[librdkafka-1.8.2]: https://github.com/opentable/librdkafka-1.8.2

### Uninstalling Software

Το uninstall software installed by this tap, use
`brew uninstall opentable/public/<formula>` e.g.:

    $ brew uninstall opentable/m1/librdkafka-1.8.2

If you additionally no longer want to receive updates from this tap:

    $ brew untap opentable/m1


