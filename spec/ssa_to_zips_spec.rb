require 'spec_helper'

describe SsaToZips do
  it 'has a version number' do
    expect(SsaToZips::VERSION).not_to be nil
  end

  it 'returns an array of zip codes for a valid county code' do
    result = SsaToZips.map("01110")

    expected = ["36558", "36904", "36908", "36910", "36912", "36913", "36915", "36916", "36919", "36921", "36922"]
    expect(result).to match_array(expected)
  end

  it 'returns an empty array if an invalid county code is passed in' do
    result = SsaToZips.map("apple pie")

    expect(result).to match_array([])
  end
end
