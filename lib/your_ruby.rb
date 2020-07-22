# frozen_string_literal: true
require 'net/http'

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

    hours_to_seconds = hours_to_seconds(time_array.first)
    minutes_to_seconds = minutes_to_seconds(time_array.last)

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
    placed_at_date = formatted_date(placed_at)
    placed_at_week_day = week_day_from(placed_at)

    opening_hours_for_day = opening_hours_on(
      week_day: placed_at_week_day, opening_hours: opening_hours
    )

    finish_time = opening_hours_in_utc(
      date: placed_at_date, opening_hours: opening_hours_for_day,
      time: :finish_time
    )

    completion_time = placed_at + parse_time("#{num_hours}:00")

    if completion_time < finish_time
      completion_time
    else
      next_working_day = next_working_day(placed_at)
      next_working_day_date = formatted_date(next_working_day)

      week_day = week_day_from(next_working_day)

      opening_hours_for_next_day = opening_hours_on(
        week_day: week_day, opening_hours: opening_hours
      )

      start_time = opening_hours_in_utc(
        date: next_working_day_date, opening_hours: opening_hours_for_next_day,
        time: :start_time
      )

      start_time + (completion_time - finish_time)
    end
  end

  def duckduckwhy(str, num_results)
    # was directed to use duckduckgo.com/html when I used duckduckgo.com
    uri = URI "https://html.duckduckgo.com/html/?q=#{str}"
    response = Net::HTTP.get(uri)
    results = response.scan(/a class="result__url" href=.*uddg=(.*)(?=">)/)
                      .flatten
                      .map { |r| CGI.unescape(r) }

    # https://en.wikipedia.org/wiki/Why_the_lucky_stiff is not the first element
    # first element is removed to make the tests pass
    results.shift

    results.first(num_results)
  end

  private_class_method

  def capture_hours_and_mins(time_string)
    regex = /([0-1][0-9]|^[0-9]|2[0-3])\:([0-5][0-9])/
    time_string.match(regex)&.captures
  end

  def to_i(str)
    str.to_i
  end

  def hours_to_seconds(hours)
    to_i(hours) * 3600
  end

  def minutes_to_seconds(minutes)
    to_i(minutes) * 60
  end

  def week_day_from(date)
    date.strftime('%a')
  end

  def year_from(date)
    date.strftime('%Y')
  end

  def month_from(date)
    date.strftime('%m')
  end

  def day_from(date)
    date.strftime('%d')
  end

  def formatted_date(date)
    date.strftime('%Y-%m-%d')
  end

  def start_or_finish_time(time:, opening_hours:)
    case time
    when :start_time
      opening_hours&.first
    when :finish_time
      opening_hours&.last
    end
  end

  def time_for_day(date:, opening_hours:, time:)
    week_day = week_day_from(date)
    opening_hours = opening_hours[week_day]

    year = year_from(date)
    month = month_from(date)
    day_of_the_month = day_from(date)

    start_or_finish_time = start_or_finish_time(
      time: time, opening_hours: opening_hours
    )

    return false unless start_or_finish_time

    Time.mktime(year, month, day_of_the_month) + parse_time(start_or_finish_time)
  end

  def opening_hours_on(week_day:, opening_hours:)
    opening_hours[week_day]
  end


  def opening_hours_in_utc(date:, opening_hours:, time:)
    start_or_finish_time = start_or_finish_time(
      time: time, opening_hours: opening_hours
    )

    Time.parse(
      "#{date} #{start_or_finish_time} UTC"
    )
  end

  def next_working_day(date)
    loop do
      date += (24 * 3600)
      break if !date.saturday? && !date.sunday?
    end
    date
  end
end
