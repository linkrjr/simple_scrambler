module SimpleScrambler
  module Scramblers
    class ROT47
      include SimpleScrambler::SubstitutionCipher
      
      CHARACTERS = (33..126).map(&:chr)
      FACTOR = 47

      def self.scramble(message)
        perform(message)
      end

      def self.decrypt(message)
        perform(message)
      end

    end
  end
end