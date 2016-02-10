require "ssa_to_zips/version"
require "json"

module SsaToZips

  def self.data
    path = File.expand_path("./data/ssa.json", File.dirname(__FILE__))
    @data ||= JSON.parse(File.read(path))
  end

  def self.map(county_code)
    result = data[county_code]
    return [] if result.nil?
    result
  end

end
