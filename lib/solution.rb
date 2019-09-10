require 'pry'

def clock_angle(time)
    if time[2] == ':'
        hour = time[0..1].to_i
        minute = time[3..4].to_i
    else
        hour = time[0].to_i
        minute = time[2..3].to_i
    end
    hour %= 12

    hour_angle = ((hour + (minute / 60.0)) / 12.0) * 360

    minute_angle = (minute / 60.0) * 360

    
    ret = (minute_angle - hour_angle).abs
    if ret > 180
        ret -= 180
    end
    ret
    # binding.pry
end


# clock_angle("3:15")