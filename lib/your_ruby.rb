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
