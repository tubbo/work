# work

A cookbook for building my Mac OS X workstation using Chef. This
cookbook assumes you use Ruby as a primary development language,
Homebrew and Caskroom as package managers, and the [Homer][homer] home
directory management tool. It also assumes your Ruby development environment
consists of `chruby`, `ruby-install` and `bundler`.

Requires the [Chef Development Kit][dk] to be installed on your machine
prior to convergence.

## Supported Platforms

- Mac OS X 10.10

## Attributes

- **homebrew.formulas** - An Array of Homebrew formula names to install.
    Defaults to the `brew list` of my last workstation.
- **work.casks** - An array of cask names to be installed using
    Caskroom.
- **work.config_repo** The repository containing all of the user's
    configuration. Won't be cloned if `manage_home_directory` isn't
    true.
- **work.username** The username that the primary user of this machine
    will do work under.
- **work.ruby_version** An initial version of Ruby to install.

## Usage

Before installing this cookbook, get [the Chef development kit][dk] on
your machine so you can actually run stuff. Then, clone the repo down:

```bash
$ git clone https://github.com/tubbo/work.git && cd work
```

Once it's cloned, all you have to do is run the following pre-built
command from this repo to get going:

```bash
$ ./bin/setup
```

## License and Authors

**Author:** Tom Scott
**License:** MIT

[homer]: http://github.com/tubbo/homer
[dk]: https://downloads.chef.io/chef-dk
