def clock_angle(time)
    if time[2] == ':'
        hour = time[0..1].to_f
        minute = time[3..4].to_f
    else
        hour = time[0].to_f
        minute = time[2..3].to_f
    end
    hour %= 12

    hour_angle = (hour + (minute / 60)) * 30
    minute_angle = minute * 6

    diff = (minute_angle - hour_angle).abs
    diff > 180 ? diff - 180 : diff
end