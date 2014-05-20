begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

require 'router'

run Router.new
