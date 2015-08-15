MRuby::Gem::Specification.new("hello") do |spec|
  spec.license = "MIT"
  spec.author  = "Nathan Herald"
  spec.summary = "hello world example"
  spec.bins = %w(hello)
end
