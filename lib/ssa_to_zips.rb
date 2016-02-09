require "ssa_to_zips/version"
require "json"

module SsaToZips

  def self.data
      @data ||= JSON.parse(File.read(File.expand_path("./data/ssa.json", File.dirname(__FILE__))))
    end

  def self.map(county_code)
    result = data[county_code]
    return [] if result.nil?
    result
  end

end
