class KoreanHoliday
  def initialize(date_input)
    @date_input = Date.parse date_input
  rescue ArgumentError
    # date can't be parsed due to invalid date format
    raise ArgumentError, '잘못된 date 입력 형식입니다. YYYY-MM-DD 형식으로 입력해주세요'
  end

  def translate_wday(wday)
    translated = %w[일요일 월요일 화요일 수요일 목요일 금요일 토요일]
    translated[wday]
  end

  def find_holiday
    day = @date_input
    Parser.read[day.year][day.month][day.day]
  end

  def holiday?
    target_day = find_holiday
    target_day.nil? ? false : true
  rescue NoMethodError
    raise StandardError, '해당 일자의 공휴일 정보가 없습니다'
  end

  def info
    target_day = find_holiday

    { name: target_day,
      date: @date_input.to_s,
      day: translate_wday(@date_input.wday),
      is_weekend: (6..7).include?(@date_input.wday),
      days_remaining: @date_input.mjd - Date.today.mjd }
  end
end

require 'date'
require 'korean-holiday/parser'
