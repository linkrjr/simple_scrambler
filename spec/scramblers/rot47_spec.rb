require 'spec_helper'

describe SimpleScrambler::Scramblers::ROT47 do 

  describe ".scramble" do
    it { expect(subject.class.scramble("hello")).to eql("96==@") }
    it { expect(subject.class.scramble("hi")).to eql("9:") }
    it { expect(subject.class.scramble("this is a message")).to eql("E9:D :D 2 >6DD286") }
  end

  describe ".decrypt" do
    it { expect(subject.class.decrypt("96==@")).to eql("hello") }
  end
  
end