require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
    s.platform  =   Gem::Platform::RUBY
    s.name      =   "simplegit"
    s.version   =   "0.1.3"
    s.author    =   "Scott Chacon"
    s.email     =   "schacon@gmail.com"
    s.summary   =   "A simple gem for using Git in Ruby code."
    s.files     =   FileList['lib/**/*'].to_a
    s.require_path  =   "lib"
end

Rake::GemPackageTask.new(spec) do |pkg|
    pkg.need_tar = true
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "generated latest version"
end

desc "Regenerate Documentation"
task :doc do |t|
 system('rdoc lib/ README --main README --inline-source')
end

