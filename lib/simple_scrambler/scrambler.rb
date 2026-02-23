module SimpleScrambler
  class Scrambler

    class NoMessageError < StandardError; end
    
    def self.scramble(message)
      raise_error_when_message_is_nil(message)
      cipher.scramble(message)
    end

    def self.decrypt(message)
      raise_error_when_message_is_nil(message)
      cipher.decrypt(message)
    end

    private

    def self.raise_error_when_message_is_nil(message)
      raise NoMessageError.new("A message must be provided.") unless message
    end

    def self.cipher
      SimpleScrambler::Configuration.scrambler_algorithm
    end

  end
end