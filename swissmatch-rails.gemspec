# encoding: utf-8

Gem::Specification.new do |s|
  s.name                      = "swissmatch-rails"
  s.version                   = "0.0.5"
  s.authors                   = "Stefan Rusterholz"
  s.email                     = "stefan.rusterholz@gmail.com"
  s.homepage                  = "http://github.com/apeiros/swissmatch-rails"

  s.description               = <<-DESCRIPTION.gsub(/^    /, '').chomp
    Adds ActiveRecord models and javascript assets for rails to swissmatch.
  DESCRIPTION

  s.summary                   = <<-SUMMARY.gsub(/^    /, '').chomp
    Adds ActiveRecord models and javascript assets for rails to swissmatch.
  SUMMARY

  s.files                     =
    Dir['bin/**/*'] +
    Dir['data/**/*'] +
    Dir['lib/**/*'] +
    Dir['rake/**/*'] +
    Dir['test/**/*'] +
    Dir['*.gemspec'] +
    %w[
      LICENSE.txt
      Rakefile
      README.markdown
    ]

  if File.directory?('bin') then
    s.executables = Dir.chdir('bin') { Dir.glob('**/*').select { |f| File.executable?(f) } }
  end

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1")
  s.rubygems_version          = "1.3.1"
  s.specification_version     = 3
end
