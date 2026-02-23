require "active_support/dependencies/autoload"
require 'active_support/concern'

module SimpleScrambler
  extend ActiveSupport::Autoload

  autoload :Version
  autoload :Configuration
  autoload :SubstitutionCipher
  autoload :Scramblers
  autoload :Scrambler
end
