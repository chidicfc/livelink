# frozen_string_literal: true

module YourRuby
  module_function

  def fizzbuzz(max)
    (1..max).to_a.map do |number|
      word = "#{'fizz' if number % 3 == 0}#{'buzz' if number % 5 == 0}"
      word.empty? ? number : word
    end
  end

  def smallest_rectangle_of_aspect(ratio, rectangle)
    width = rectangle.first
    height = rectangle.last
    expect_height = ratio * width

    height = expect_height if expect_height > height
    width = height / ratio if expect_height < height

    [width, height]
  end

  def parse_time(str)
    time_array = capture_hours_and_mins(str)

    return false unless time_array

    hours_to_seconds = to_i(time_array.first) * 3600
    minutes_to_seconds = to_i(time_array.last) * 60

    hours_to_seconds + minutes_to_seconds
  end

  def finish_time_for_day(date, opening_hours)
    time_for_day(
      date: date, opening_hours: opening_hours, time: :finish_time
    )
  end

  def start_time_for_day(date, opening_hours)
    time_for_day(
      date: date, opening_hours: opening_hours, time: :start_time
    )
  end

  def calculate_completion_time(placed_at, num_hours, opening_hours)
  end

  def duckduckwhy(str, num_results)
  end

  private_class_method

  def capture_hours_and_mins(time_string)
    regex = /([0-1][0-9]|2[0-3])\:([0-5][0-9])/
    time_string.match(regex)&.captures
  end

  def to_i(str)
    str.to_i
  end

  def time_for_day(date:, opening_hours:, time:)
    day = date.strftime('%a')
    start_and_finish_time = opening_hours[day]

    start_or_finish_time =
      if time == :start_time
        start_and_finish_time&.first
      elsif time == :finish_time
        start_and_finish_time&.last
      end

    return false unless start_or_finish_time

    Time.mktime(2014, 12, 2) + parse_time(start_or_finish_time)
  end
end
