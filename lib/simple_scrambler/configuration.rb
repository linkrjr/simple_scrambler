require 'active_support/core_ext/class/attribute'   
require 'singleton'

module SimpleScrambler  
    
  class Configuration  
    include Singleton

    class <<self
      attr_accessor :scrambler_algorithm
    end

    def self.setup
      yield self
    end
  end  

end