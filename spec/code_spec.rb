require 'spec_helper'

describe 'PigLatin::Code' do
  it 'converts glove to oveglay' do
    answer = PigLatin::Code.convert("glove")
    expect(answer).to eq("oveglay")
  end
  it 'converts egg to eggway' do
    answer = PigLatin::Code.convert("egg")
    expect(answer).to eq("eggway")
  end
  it 'converts yellow to ellowyay' do
    answer = PigLatin::Code.convert("yellow")
    expect(answer).to eq("ellowyay")
  end
  it 'converts rhythm to ythmrhay' do
    answer = PigLatin::Code.convert("rhythm")
    expect(answer).to eq("ythmrhay")
  end
  it 'converts queen to eenquay' do
    answer = PigLatin::Code.convert("queen")
    expect(answer).to eq("eenquay")
  end
  it 'converts orange to orangeway' do
    answer = PigLatin::Code.convert("orange")
    expect(answer).to eq("orangeway")
  end
  it 'converts basketball to asketballbay' do
    answer = PigLatin::Code.convert("basketball")
    expect(answer).to eq("asketballbay")
  end
end