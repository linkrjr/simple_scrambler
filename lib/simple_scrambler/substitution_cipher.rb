module SimpleScrambler
  module SubstitutionCipher
    extend ActiveSupport::Concern

    module ClassMethods
      
      def scramble(message)
        perform(message.downcase)
      end

      def decrypt(message)
        perform(message.downcase)
      end

      private

      def perform(message)
        message.chars.map do |char|
          if self::CHARACTERS.include?(char)
            index = self::CHARACTERS.index(char)
            self::CHARACTERS[index - self::FACTOR]
          else
            char
          end
        end.join
      end      

    end
  end
end