module FoodtruckFetcher
  class AddressExtractor
    attr_reader :string

    def initialize(string)
      @string = string
    end

    def call
      result = surf_run
      result = surf_second_run if result.nil?
      result = carmnik_run if result.nil?
      result
    end

    private

    def surf_run
      string.scan(/(?:nad|pod|przy) (.+) od ([0-9]+[:.]+[0-9]+) (?:do|-) ([0-9]+[:.]+[0-9]+)/i)
        .try(:first).try(:first)
    end

    def surf_second_run
      string.scan(/(?:nad|pod|przy|obok|koło) (.+)\./i)
        .try(:first).try(:first)
    end

    def carmnik_run
      string.lines.first.gsub(
        /Poniedziałek|Wtorek|Środa|Czwartek|Piątek|Sobota|Niedziela|,|\.|\n/i, ''
      )
    end
  end
end
