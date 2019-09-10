require 'pry'
def clock_angle(time)

    hour_hand = time.split(":")[0].to_f
    minute_hand = time.split(":")[1].to_f

    minutes = minute_hand * 6
    hours = (hour_hand * 30) + (minute_hand * 0.5)

    angle = (minutes - hours).abs
    if angle > 180
        angle = 360 - angle
    end

    angle
end
