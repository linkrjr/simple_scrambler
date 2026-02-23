module SimpleScrambler

  def self.version
    Gem::Version.new("1.2.0")
  end

  module Version
    MAJOR, MINOR, PATCH, PRE = SimpleScrambler.version.segments
    STRING = SimpleScrambler.version.to_s
  end
end
