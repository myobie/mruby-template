MRUBY = "mruby/build/host/bin/mruby"

def invoke(name)
  Rake::Task[name].invoke
end

task :default => :mruby do
  exec "#{MRUBY} main.rb"
end

task :fork => :build_config do
  system "rm -rf .git"
  gitignore = File.read(".gitignore")
  File.open(".gitignore", "w") do |f|
    gitignore.lines.reject { |line| line =~ /build_config\.rb/ }.each do |line|
      f.puts line
    end
  end
  system "git init"
  system "git add ."
  system "git commit -am 'Initial commit'"
end

file "build_config.rb" => "build_config.example.rb" do |t|
  cp "build_config.example.rb", "build_config.rb"
end
task :build_config => "build_config.rb"

file MRUBY => "build_config.rb" do
  Dir.chdir "./mruby"
  ENV["MRUBY_CONFIG"] = "../build_config.rb"
  system "./minirake clean"
  system "./minirake"
end

task :mruby => MRUBY
