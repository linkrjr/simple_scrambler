require 'spec_helper'

describe SimpleScrambler::Scrambler do

  it { expect{ subject.class.scramble(nil) }.to raise_error }
  it { expect{ subject.class.decrypt(nil) }.to raise_error }

  describe ".scramble" do
   context "when using the default cipher 'Zenit Polar'" do
      it { expect(subject.class.scramble("hello")).to eql "honne" }
      it { expect(subject.class.scramble("Message")).to eql "mossigo" }
      it { expect(subject.class.scramble("Message with space")).to eql("mossigo warh szico") }
    end
   
    context "when using the ROT13 cipher" do
      before do
        SimpleScrambler::Configuration.setup do |config|
          config.scrambler_algorithm = SimpleScrambler::Scramblers::ROT13
        end
      end

      it { expect(subject.class.scramble("hello")).to eql("uryyb") }
      it { expect(subject.class.scramble("Message")).to eql("zrffntr") }
      it { expect(subject.class.scramble("Message with space")).to eql("zrffntr jvgu fcnpr") }
    end


    context "when using the ROT47 cipher" do
      before do
        SimpleScrambler::Configuration.setup do |config|
          config.scrambler_algorithm = SimpleScrambler::Scramblers::ROT47
        end
      end

      it { expect(subject.class.scramble("hello")).to eql("96==@") }
      it { expect(subject.class.scramble("Message")).to eql("|6DD286") }
      it { expect(subject.class.scramble("Message with space")).to eql("|6DD286 H:E9 DA246") }
    end
  end
  
  describe ".decrypt" do
   context "when using the default cipher 'Zenit Polar'" do
      it { expect(subject.class.decrypt("honne")).to eql "hello" }
      it { expect(subject.class.decrypt("Mossigo")).to eql "message" }
      it { expect(subject.class.decrypt("Mossigo warh szico")).to eql("message with space") }
    end
   
    context "when using the ROT13 cipher" do
      before do
        SimpleScrambler::Configuration.setup do |config|
          config.scrambler_algorithm = SimpleScrambler::Scramblers::ROT13
        end
      end

      it { expect(subject.class.decrypt("uryyb")).to eql("hello") }
      it { expect(subject.class.decrypt("Zrffntr")).to eql("message") }
      it { expect(subject.class.decrypt("Zrffntr jvgu fcnpr")).to eql("message with space") }
    end


    context "when using the ROT47 cipher" do
      before do
        SimpleScrambler::Configuration.setup do |config|
          config.scrambler_algorithm = SimpleScrambler::Scramblers::ROT47
        end
      end

      it { expect(subject.class.decrypt("96==@")).to eql("hello") }
      it { expect(subject.class.decrypt("|6DD286")).to eql("Message") }
      it { expect(subject.class.decrypt("|6DD286 H:E9 DA246")).to eql("Message with space") }
    end
  end

end