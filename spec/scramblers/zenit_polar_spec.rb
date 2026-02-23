require 'spec_helper'

describe SimpleScrambler::Scramblers::ZenitPolar do

  describe ".scramble" do
    it { expect(subject.class.scramble("message")).to eql("mossigo") }
    it { expect(subject.class.scramble("Message")).to eql("mossigo") }
    it { expect(subject.class.scramble("hello world")).to eql("honne wetnd") }
  end
  
  describe ".decrypt" do
    it { expect(subject.class.decrypt("mossigo")).to eql("message") }
    it { expect(subject.class.decrypt("Mossigo")).to eql("message") }
    it { expect(subject.class.decrypt("honne wetnd")).to eql("hello world") }
  end
  
end