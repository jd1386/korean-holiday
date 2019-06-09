# korean-holiday
A simple ruby gem that checks if any given date is a Korean official holiday

```ruby
require 'korean-holiday'

my_date = KoreanHoliday.new('2020-01-01')
my_date.holiday?
# => true
my_date.info
# => {:name=>"새해", :date=>"2020-01-01", :day=>"수요일", :is_weekend=>false, :days_remaining=>206}
```
