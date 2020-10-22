# frozen_string_literal: true

times = File.read('times.txt')
days = times.split("\n\n")
days.each.with_index(1) do |day, index|
  splits = day.split("\n")
  time = splits.inject(0) do |total, split|
    hours, minutes = split.split(' ')
    if minutes.nil?
      minutes = hours
      hours = 0
    end

    total + (Integer(hours) * 60) + Integer(minutes)
  end
  hours = time / 60
  minutes = time - (hours * 60)
  p "Day #{index}: #{hours}h#{minutes}min"
end
