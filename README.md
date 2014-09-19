# Tnef

Extract e-mail attachments with MIME type 'application/ms-tnef'

Ships with tnef binary, so you dont have to install it (alternatively see [tinnef](https://github.com/ledermann/tinnef) for a distribution without binaries)

```Bash
gem install tnef
```

## Usage

```Ruby
Tnef.unpack(@part.attachments[part.filename]) do |file|
  puts "FILE: #{file}"
end
```

## Gem development: updating tnef

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
