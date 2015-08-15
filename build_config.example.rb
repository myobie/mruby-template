MRuby::Build.new do |conf|
  if ENV["VisualStudioVersion"] || ENV["VSINSTALLDIR"]
    toolchain :visualcpp
  elsif /darwin/ =~ RUBY_PLATFORM
    toolchain :clang
  else
    toolchain :gcc
  end

  enable_debug
  conf.cc.defines = %w(ENABLE_DEBUG)

  # mruby's Core GEMs
  conf.gembox "full-core"

  conf.gem "#{root}/mrbgems/mruby-bin-debugger"

  # user-defined GEMs
  # No GEMs activated
end
