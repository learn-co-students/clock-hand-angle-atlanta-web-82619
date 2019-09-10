require 'pry'
# 360 / 60 = 6 so every minute is 6 degrees and every hour is 30 degrees
def clock_angle(time)
    # code your solution here
    hour, minute = time.split(":")
    hour_hand = hour.to_i == 12 ? 0 + (minute.to_i * 0.5) : (hour.to_i * 30) + (minute.to_i * 0.5)
    minute_hand = minute.to_i == 0 ? 360 : minute.to_i * 6.0
    
    if (hour_hand - minute_hand).abs == 360
      angle_between = 0
    else
      angle_between = (hour_hand - minute_hand).abs
    end 
  #  binding.pry
end
# 9:00
# 270 - 360

puts clock_angle("09:00")
