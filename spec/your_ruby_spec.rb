# frozen_string_literal: true

require 'your_ruby'
require 'time'

RSpec.describe 'YourRuby' do
  describe '.fizzbuzz' do
    it 'returns fizzbuzz to 3, returning the number or "fizz" if the number is a multiple of 3' do
      expect(YourRuby.fizzbuzz(3)).to eq([1, 2, 'fizz'])
    end

    it 'returns fizzbuzz to 5, with rules above and multiples of 5 are "buzz"' do
      expect(YourRuby.fizzbuzz(5)).to eq([1, 2, 'fizz', 4, 'buzz'])
    end

    it 'returns fizzbuzz to 15 with rules above and multiples of 3 and 5 are "fizzbuzz"' do
      expect(YourRuby.fizzbuzz(15)).to eq([1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz'])
    end

    it 'returns fizzbuzz to 30' do
      expect(YourRuby.fizzbuzz(30)).to eq([1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz', 11, 'fizz', 13, 14, 'fizzbuzz', 16, 17, 'fizz', 19, 'buzz', 'fizz', 22, 23, 'fizz', 'buzz', 26, 'fizz', 28, 29, 'fizzbuzz'])
    end
  end

  describe '.smallest_rectangle_of_aspect' do
    it 'finds the smallest rectangle of aspect ratio 1.0 that contains a rectangle of size 300x500' do
      expect(YourRuby.smallest_rectangle_of_aspect(1.0, [300, 500])).to eq([500, 500])
    end

    it 'finds the smallest rectangle of aspect ratio 1.0 that contains a rectangle of size 500x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(1.0, [500, 300])).to eq([500, 500])
    end

    it 'finds the smallest rectangle of aspect ratio 2.0 that contains a rectangle of size 500x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(2.0, [500, 300])).to eq([500, 1000])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 500x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [500, 300])).to eq([600, 300])
    end

    it 'finds the smallest rectangle of aspect ratio 0.1 that contains a rectangle of size 500x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.1, [500, 300])).to eq([3000, 300])
    end

    it 'finds the smallest rectangle of aspect ratio 10 that contains a rectangle of size 500x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(10, [500, 300])).to eq([500, 5000])
    end

    it 'finds the smallest rectangle of aspect ratio 10 that contains a rectangle of size 10x10' do
      expect(YourRuby.smallest_rectangle_of_aspect(10, [10, 10])).to match_array([10, 100])
    end

    it 'finds the smallest rectangle of aspect ratio 3/5 that contains a rectangle of size 500x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(3.0 / 5.0, [500, 300])).to eq([500, 300])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 200x700' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [200, 700])).to eq([350, 700])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 400x700' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [400, 700])).to eq([1400, 700])
    end

    it 'finds the smallest rectangle of aspect ratio 1.0 that contains a rectangle of size 300x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(1.0, [300, 300])).to eq([300, 300])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 300x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [300, 300])).to eq([300, 600])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 300x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [300, 300])).to eq([600, 300])
    end

    it 'finds the smallest rectangle of aspect ratio 1.0 that contains a rectangle of size 700x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(1.0, [700, 300])).to eq([700, 700])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 700x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [700, 300])).to eq([700, 1400])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 700x600' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [700, 600])).to eq([700, 1400])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 700x300' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [700, 300])).to eq([700, 350])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 700x600' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [700, 600])).to eq([1200, 600])
    end

    it 'finds the smallest rectangle of aspect ratio 1.0 that contains a rectangle of size 300x400' do
      expect(YourRuby.smallest_rectangle_of_aspect(1.0, [300, 400])).to eq([400, 400])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 300x400' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [300, 400])).to eq([300, 600])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 300x800' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [300, 800])).to eq([400, 800])
    end

    it 'finds the smallest rectangle of aspect ratio 2 that contains a rectangle of size 400x800' do
      expect(YourRuby.smallest_rectangle_of_aspect(2, [400, 800])).to eq([400, 800])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 300x400' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [300, 400])).to eq([800, 400])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 300x800' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [300, 800])).to eq([1600, 800])
    end

    it 'finds the smallest rectangle of aspect ratio 0.5 that contains a rectangle of size 400x800' do
      expect(YourRuby.smallest_rectangle_of_aspect(0.5, [400, 800])).to eq([1600, 800])
    end
  end

  describe '.parse_time' do
    let(:opening_hours) do
      {
        'Mon' => ['09:00', '17:30'],
        'Tue' => ['09:00', '17:30'],
        'Wed' => ['09:00', '17:30'],
        'Thu' => ['09:00', '17:30'],
        'Fri' => ['09:00', '17:00']
      }
    end

    it 'converts 09:00 into number of seconds into the day' do
      expect(YourRuby.parse_time('09:00')).to eq(32_400)
    end

    it 'converts 17:30 into number of seconds into the day' do
      expect(YourRuby.parse_time('17:30')).to eq(63_000)
    end

    it 'returns false when the time is invalid' do
      expect(YourRuby.parse_time('24:00')).to be false
    end
  end

  describe '.finish_time_for_day' do
    let(:opening_hours) do
      {
        'Mon' => ['09:00', '17:30'],
        'Tue' => ['09:00', '17:30'],
        'Wed' => ['09:00', '17:30'],
        'Thu' => ['09:00', '17:30'],
        'Fri' => ['09:00', '17:00']
      }
    end

    it 'returns the closing time for the day from the opening hours' do
      target_day = Time.mktime(2014, 12, 2, 12)
      expected_closing_time = Time.mktime(2014, 12, 2, 17, 30)
      expect(YourRuby.finish_time_for_day(target_day, opening_hours)).to eq(expected_closing_time)
    end

    it 'returns false if there are no opening times for the given day' do
      target_day = Time.mktime(2014, 12, 6, 12)
      expect(YourRuby.finish_time_for_day(target_day, opening_hours)).to eq(false)
    end
  end

  describe '.start_time_for_day' do
    let(:opening_hours) do
      {
        'Mon' => ['09:00', '17:30'],
        'Tue' => ['09:00', '17:30'],
        'Wed' => ['09:00', '17:30'],
        'Thu' => ['09:00', '17:30'],
        'Fri' => ['09:00', '17:00']
      }
    end

    it 'returns the opening time for the day from the opening hours' do
      target_day            = Time.mktime(2014, 12, 2, 10)
      expected_opening_time = Time.mktime(2014, 12, 2, 9, 0)
      expect(YourRuby.start_time_for_day(target_day, opening_hours)).to eq(expected_opening_time)
    end

    it 'returns false if there are no opening times for the given day' do
      target_day = Time.mktime(2014, 12, 6, 10)
      expect(YourRuby.start_time_for_day(target_day, opening_hours)).to eq(false)
    end
  end

  describe '.calculate_completion_time' do
    let(:opening_hours) do
      {
        'Mon' => ['09:00', '17:30'],
        'Tue' => ['09:00', '17:30'],
        'Wed' => ['09:00', '17:30'],
        'Thu' => ['09:00', '17:30'],
        'Fri' => ['09:00', '17:00']
      }
    end

    it 'calculates when my prints will be ready if they take 2 hours to process and I order them at 11:00 on Tuesday' do
      placed_time                = Time.parse('2014-12-02 11:00 UTC')
      calculated_completion_time = YourRuby.calculate_completion_time(placed_time, 2, opening_hours)
      expect(calculated_completion_time).to eq(Time.parse('2014-12-02 13:00 UTC'))
    end

    it 'calculates when my prints will be ready if they take 2 hours to process and I order them at 16:30 on Friday' do
      placed_time                = Time.parse('2014-12-05 16:30 UTC')
      calculated_completion_time = YourRuby.calculate_completion_time(placed_time, 2, opening_hours)
      expect(calculated_completion_time).to eq(Time.parse('2014-12-08 10:30 UTC'))
    end
  end

  describe '.duckduckwhy' do
    it 'gets the top 5 results for "whytheluckystiff" from duckduckgo.com' do
      results = YourRuby.duckduckwhy('whytheluckystiff', 5)
      expect(results).not_to be_nil
      expect(results.size).to eq(5)
      expect(results).to include('https://en.wikipedia.org/wiki/Why_the_lucky_stiff')
    end

    it 'gets the first result for "whytheluckystiff" from duckduckgo.com' do
      results = YourRuby.duckduckwhy('whytheluckystiff', 1)
      expect(results).not_to be_nil
      expect(results.size).to eq(1)
      expect(results).to include('https://en.wikipedia.org/wiki/Why_the_lucky_stiff')
    end
  end
end
