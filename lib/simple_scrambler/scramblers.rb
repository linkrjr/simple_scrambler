module SimpleScrambler
  module Scramblers
  end
end

Dir[File.dirname(__FILE__) + "/scramblers/*.rb"].each { |file| require file }