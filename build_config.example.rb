MRuby::Build.new do |conf|
  if ENV['VisualStudioVersion'] || ENV['VSINSTALLDIR']
    toolchain :visualcpp
  elsif /darwin/ =~ RUBY_PLATFORM
    toolchain :clang
  else
    toolchain :gcc
  end

  enable_debug
  conf.cc.defines = %w(ENABLE_DEBUG)

  # mruby's Core GEMs
  conf.gembox 'full-core'

  conf.gem 'mruby/mrbgems/mruby-bin-debugger'
  # conf.gem 'mruby/mrbgems/mruby-bin-mirb'
  # conf.gem 'mruby/mrbgems/mruby-bin-mrbc'
  # conf.gem 'mruby/mrbgems/mruby-bin-mruby'
  # conf.gem 'mruby/mrbgems/mruby-bin-mruby-config'
  # conf.gem 'mruby/mrbgems/mruby-bin-strip'
  # conf.gem 'mruby/mrbgems/mruby-array-ext'
  # conf.gem 'mruby/mrbgems/mruby-compiler'
  # conf.gem 'mruby/mrbgems/mruby-enum-ext'
  # conf.gem 'mruby/mrbgems/mruby-enum-lazy'
  # conf.gem 'mruby/mrbgems/mruby-enumerator'
  # conf.gem 'mruby/mrbgems/mruby-error'
  # conf.gem 'mruby/mrbgems/mruby-eval'
  # conf.gem 'mruby/mrbgems/mruby-exit'
  # conf.gem 'mruby/mrbgems/mruby-fiber'
  # conf.gem 'mruby/mrbgems/mruby-hash-ext'
  # conf.gem 'mruby/mrbgems/mruby-kernel-ext'
  # conf.gem 'mruby/mrbgems/mruby-math'
  # conf.gem 'mruby/mrbgems/mruby-numeric-ext'
  # conf.gem 'mruby/mrbgems/mruby-object-ext'
  # conf.gem 'mruby/mrbgems/mruby-objectspace'
  # conf.gem 'mruby/mrbgems/mruby-print'
  # conf.gem 'mruby/mrbgems/mruby-proc-ext'
  # conf.gem 'mruby/mrbgems/mruby-random'
  # conf.gem 'mruby/mrbgems/mruby-range-ext'
  # conf.gem 'mruby/mrbgems/mruby-sprintf'
  # conf.gem 'mruby/mrbgems/mruby-string-ext'
  # conf.gem 'mruby/mrbgems/mruby-string-utf8'
  # conf.gem 'mruby/mrbgems/mruby-struct'
  # conf.gem 'mruby/mrbgems/mruby-symbol-ext'
  # conf.gem 'mruby/mrbgems/mruby-time'
  # conf.gem 'mruby/mrbgems/mruby-toplevel-ext'

  # user-defined GEMs
  # No GEMs activated
end
