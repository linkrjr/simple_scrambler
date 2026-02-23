module SimpleScrambler
  module Scramblers
    class ZenitPolar
      include SimpleScrambler::SubstitutionCipher

      CHARACTERS = %w(z e n i t p o l a r)
      FACTOR = 5

    end
  end
end
