# frozen_string_literal: true

module YourRuby
  module_function

  def fizzbuzz(max)
    (1..max).to_a.map do |n|
      word = "#{'fizz' if n % 3 == 0}#{'buzz' if n % 5 == 0}"
      word.empty? ? n : word
    end
  end

  def smallest_rectangle_of_aspect(ratio, rectangle)
    width = rectangle.first
    height = rectangle.last
    expect_height = ratio * width

    height = ratio * width if expect_height > height
    width = height / ratio if expect_height < height

    [width, height]
  end

  def parse_time(str)
    time_array = capture_hours_and_mins(str)

    return false unless time_array

    hours_to_seconds = hours(time_array) * 3600
    minutes_to_seconds = minutes(time_array) * 60

    hours_to_seconds + minutes_to_seconds
  end

  def finish_time_for_day(date, opening_hours)
    day = date.strftime('%a')
    finish_time = opening_hours[day]&.last

    return false unless finish_time

    Time.mktime(2014, 12, 2) + parse_time(finish_time)
  end

  def start_time_for_day(date, opening_hours)
  end

  def calculate_completion_time(placed_at, num_hours, opening_hours)
  end

  def duckduckwhy(str, num_results)
  end

  def capture_hours_and_mins(time_string)
    regex = /([0-1][0-9]|2[0-3])\:([0-5][0-9])/
    time_string.match(regex)&.captures
  end
end
