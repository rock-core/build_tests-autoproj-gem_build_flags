require "bundler/gem_tasks"
require "rake/extensiontask"

task :build => :compile

Rake::ExtensionTask.new("gem_build_flags") do |ext|
  ext.lib_dir = "lib/gem_build_flags"
end

task :default => [:clobber, :compile, :spec]
