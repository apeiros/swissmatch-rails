# encoding: utf-8

begin
  require 'rubygems/version' # newer rubygems use this
rescue LoadError
  require 'gem/version' # older rubygems use this
end

module SwissMatch
  module Rails

    # The version of the swissmatch-location gem.
    Version = Gem::Version.new("0.0.4")
  end
end
