module SimpleScrambler
  module Ciphers
  end
end

Dir[File.dirname(__FILE__) + "/ciphers/*.rb"].each { |file| require file }