MRuby::Build.new do |conf|
  toolchain :clang

  conf.bins = %w(mrbc)

  # mruby's Core GEMs
  conf.gem 'mruby/mrbgems/mruby-bin-mirb'
  conf.gem 'mruby/mrbgems/mruby-bin-mruby'
  conf.gem 'mruby/mrbgems/mruby-array-ext'
  conf.gem 'mruby/mrbgems/mruby-enum-ext'
  conf.gem 'mruby/mrbgems/mruby-eval'
  conf.gem 'mruby/mrbgems/mruby-exit'
  conf.gem 'mruby/mrbgems/mruby-fiber'
  conf.gem 'mruby/mrbgems/mruby-hash-ext'
  conf.gem 'mruby/mrbgems/mruby-math'
  conf.gem 'mruby/mrbgems/mruby-numeric-ext'
  conf.gem 'mruby/mrbgems/mruby-object-ext'
  conf.gem 'mruby/mrbgems/mruby-objectspace'
  conf.gem 'mruby/mrbgems/mruby-print'
  conf.gem 'mruby/mrbgems/mruby-proc-ext'
  conf.gem 'mruby/mrbgems/mruby-random'
  conf.gem 'mruby/mrbgems/mruby-range-ext'
  conf.gem 'mruby/mrbgems/mruby-sprintf'
  conf.gem 'mruby/mrbgems/mruby-string-ext'
  conf.gem 'mruby/mrbgems/mruby-string-utf8'
  conf.gem 'mruby/mrbgems/mruby-struct'
  conf.gem 'mruby/mrbgems/mruby-symbol-ext'
  conf.gem 'mruby/mrbgems/mruby-time'
  conf.gem 'mruby/mrbgems/mruby-toplevel-ext'

  # user-defined GEMs
  # No GEMs activated
end
