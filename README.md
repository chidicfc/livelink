# Livelink Ruby Test

The idea is to see how you write ruby and how you think about solving problems. The majority of these tests are real problems taken from our existing codebase. Code reuse and additional test coverage where appropriate is encouraged.

Tests are in `spec/your_ruby_spec.rb`. Run them using `bundle exec rspec` from the top level directory.
Your solutions should go in `lib/your_ruby.rb`.

## Constraints
- Use only the core libraries, no gems (Excluding RSpec which has been included for testing)
- All times should be in UTC
- Code should be compatible with Ruby 2.5


## Tasks
Brief outline of the tasks you will need to complete

### fizzbuzz
Takes an integer as the argument and then returns an array of results up to that number.

### smallest_rectangle_of_aspect
Takes an aspect ratio (height/width) and a rectangle (array [width, height]) and works out the smallest rectangle of that aspect ratio that contains a rectangle of those dimensions.

### parse_time
Takes a string in the form HH:MM and works out how many seconds into the day it is.

### finish_time_for_day / start_time_for_day
Takes a date/time object and a hash in the form `{ day => [starts, ends], ... }`, where day is the abbreviated english name for the day, starts and ends are times in the format accepted by parse_time. It returns the start/finish time as a time object for that day.

### calculate_completion_time
Takes a time, a number of hours (num_hours) and a hash of opening hours. If I place my order at placed_at time, then this returns the earliest point at which (1) the shop is open and (2) has been open for a total of num_hours since I placed my order. So if I place my order 1 hour before closing time and it takes 2 hours to process, then this will rollover 1 hour into the next working day.

### duckduckwhy
This scrapes duckduckgo.com to get the first N results for the specified phrase, using Net::HTTP.


These files are © Livelink Technology, 2014-2020 and are for individual applicants and Livelink only.
