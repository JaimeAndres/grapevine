require 'spec_helper'

describe Grapevine::API do

  module Test
  end

  subject { Class.new(Grapevine::API) }

  def app; subject end

  specify { expect(!!defined?(JSON)).to eq(true) }
  specify { expect(!!defined?(Grape)).to eq(true) }

  it 'should include helpers' do
    expect(subject.mount_helpers([Test]).include?(Test)).to eq(true)
  end
end
