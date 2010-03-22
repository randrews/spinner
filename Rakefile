require 'fileutils'

task :default => :test

desc "Delete temp and generated files"
task :clean do
  files=Dir["**/*~"]
  puts "Removing #{files.size} Emacs temp file#{(files.size==1?'':'s')}"
  files.each do |tmp|
    FileUtils.rm tmp
  end

  puts "Removing built gem"
  `rm -f *.gem`
end

desc "Run all tests"
task :test do
  exec "spec --color test/*.rb"
end

desc "Create a gem"
task :gem do
  `rm -f spinner-*.gem`
  `gem build spinner.gemspec`
end

desc "Install spinner"
task :install=>:gem do
  `gem install --force spinner-*.gem`
end

desc "Bump version number"
task :bump do
    new_version = ENV["VERSION"] ? ENV["VERSION"] : File.read("VERSION").succ
    File.open("VERSION","w") do |f|
        f.print new_version
    end

    puts "Bumped version to #{new_version}"
end
