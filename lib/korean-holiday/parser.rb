require 'yaml'

class KoreanHoliday::Parser
  def self.read
    YAML.safe_load(File.read('data/holidays.yml'))
  end
end
