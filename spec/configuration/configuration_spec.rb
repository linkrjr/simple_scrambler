require 'spec_helper'

describe SimpleScrambler::Configuration do
  
  context "default settings" do
    subject { SimpleScrambler::Configuration.config }
  
    # its(:scrambler_algorithm) { should eql SimpleScrambler::Ciphers::ZenitPolar }
  end

  context "user settings" do
    
    class FakeAlgorithm; end
    
    before :all do
      SimpleScrambler::Configuration.configure do |config|
        config.scrambler_algorithm = FakeAlgorithm
      end
    end
    
    subject { SimpleScrambler::Configuration.config }
    # its(:scrambler_algorithm) { should eql FakeAlgorithm }    
  end

end