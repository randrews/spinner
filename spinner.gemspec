require "rubygems"
 
SPEC=Gem::Specification.new do |s|
  s.name = "spinner"
  s.version = File.read(File.join(File.dirname(__FILE__), "VERSION"))
  s.date = ""
  s.author = "Ross Andrews"
  s.email = "randrews@geekfu.org"
  s.homepage = "http://github.com/randrews/spinner"
  s.platform = Gem::Platform::RUBY
  s.summary = "Display an animated spinner during long-running processes"
  s.description = <<-STR
Display an animated spinner on the console during long-running processes in your app, with a percentage completed.
STR

  s.rubyforge_project="spinner"

  s.files = ["VERSION"] + Dir["lib/**/*.rb"]

  s.has_rdoc=false
end
