require 'pp'

class DateRange < Struct.new(:start_at, :end_at)
  def initialize start_at = nil, end_at = nil
    raise StandardError, 'start_at should be before end_at' if start_at > end_at
    self.start_at = start_at
    self.end_at = end_at
  end

  def include? time
    (start_at...end_at).cover? time
  end
end

d = DateRange.new Time.now - 3600*24*10, Time.now

days = ARGV[0].nil? ? 0 : ARGV[0].to_i
target = Time.now - 3600*24*days
pp d.include? target 
