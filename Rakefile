# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "font-awesome-rails"
  gem.homepage = "http://github.com/kristianmandrup/font-awesome-rails"
  gem.license = "MIT"
  gem.summary = %Q{Font Awesome ready for use with Rails asset pipeline}
  gem.description = %Q{Use Font Awesome in your Rails app :)}
  gem.email = "kmandrup@gmail.com"
  gem.authors = ["Kristian Mandrup"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
