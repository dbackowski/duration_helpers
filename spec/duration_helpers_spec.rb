require 'spec_helper'

describe DurationHelpers do
  before(:each) do
    @dummy_class = Class.new { extend DurationHelpers }
  end

  describe '#duration_to_seconds' do
    it "converts duration to seconds" do
      expect(@dummy_class.duration_to_seconds('00:49:12')).to eq 2952
      expect(@dummy_class.duration_to_seconds('00:00:12')).to eq 12
      expect(@dummy_class.duration_to_seconds('135:49:12')).to eq 488952
    end
  end

  describe '#seconds_to_duration' do
    it 'converts seconds to duration' do
      expect(@dummy_class.seconds_to_duration(2952)).to eq '00:49:12'
      expect(@dummy_class.seconds_to_duration(12)).to eq '00:00:12'
      expect(@dummy_class.seconds_to_duration(488952)).to eq '135:49:12'
    end
  end
end