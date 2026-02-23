require 'rubygems'
require 'simple_scrambler'
require 'rspec'
require "codeclimate-test-reporter"

# CodeClimate::TestReporter.start

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each {|f| require f}

RSpec.configure do |config|  

  config.after :each do  
    SimpleScrambler::Configuration.setup do |config|
      config.scrambler_algorithm = SimpleScrambler::Scramblers::ZenitPolar
    end
  end

end
