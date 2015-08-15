# How do I run this?

```sh
$ rake
```

# How do I start a project with this?

```sh
$ rake fork
```

# How do I add gems?

Add a gem to `build_config.rb`:

```ruby
  conf.gem mgem: 'mruby-sqlite3'
```

Next time you run `rake` it will recompile `mruby` to include the gem.
Yes, gems are compiled into the `mruby` runtime/binary.
