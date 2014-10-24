require "duration_helpers/version"
require 'duration_helpers/railtie' if defined?(Rails)

module DurationHelpers
  def duration_to_seconds(duration)
    units = %w{hours minutes seconds}
    duration.split(':').map.with_index { |x, i| x.to_i.send(units[i]) }.reduce(:+).to_i
  end

  def seconds_to_duration(seconds)
    [60, 60].reduce([seconds]) { |m, o| m.unshift(m.shift.divmod(o)).flatten }.map { |a| a.to_s.rjust(2, '0') }.join(':')
  end
end
