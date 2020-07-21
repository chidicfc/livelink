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
    # aspect ratio = width/height

    height = rectangle.first
    width = rectangle.last
    expect_width = ratio * height

    width = ratio * height if expect_width > width
    height = width / ratio if expect_width < width

    [height, width]
  end

  def parse_time(str)
    regex = /([0-1][0-9]|2[0-3])\:([0-5][0-9])/
    captures = str.match(regex)&.captures

    if captures
      hours_to_seconds = captures.first.to_i * 3600
      minutes_to_seconds = captures.last.to_i * 60

      hours_to_seconds + minutes_to_seconds
    else
      puts "Argument is not a valid time.\nExamples of valid times are 09:00, 23:59"
    end
  end

  def finish_time_for_day(date, opening_hours)
  end

  def start_time_for_day(date, opening_hours)
  end

  def calculate_completion_time(placed_at, num_hours, opening_hours)
  end

  def duckduckwhy(str, num_results)
  end
end
