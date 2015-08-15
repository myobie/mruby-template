# How do I run this?

```sh
$ rake
```

# How do I start a project with this?

```sh
$ git clone https://github.com/myobie/mruby-template.git project-name
$ cd project-name
$ rake fork
$ git remote add git@github.com:username/project-name.git origin
$ git push -u origin master
```

# Where do I put my code?

Into `main.rb`. Running `rake` will make sure `mruby` is compiled
properly and then execute `main.rb` with the compiled binary.

# How do I add gems?

Add a gem to `build_config.rb`:

```ruby
  conf.gem mgem: 'mruby-sqlite3'
```

Next time you run `rake` it will recompile `mruby` to include the gem.
Yes, gems are compiled into the `mruby` runtime/binary.

# Can I split my app up into multiple files?

No.

Well, yes, there is a `mruby-require` gem that one can use.  It will
compile a `.so` file for any gem that is loaded at runtime. It will just
compile and execute .rb files on the fly. This is probalby fine for
playing around, but not recommended for production applications. One can
use the `MRUBY_REQUIRE` environment variable so that all the time spent
loading and compiling the files happens at boot.
