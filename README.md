# Tnef

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'tnef'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tnef

## Usage

TODO: Write usage instructions here

## Updating tnef

```Bash
git clone git://git.code.sf.net/p/tnef/git fresh
rsync -va fresh/ ext/tnef
cd ext/tnef
aclocal
autoconf
autoheader
automake --add-missing
make
cd ../..
rake install
rm -rf fresh
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
