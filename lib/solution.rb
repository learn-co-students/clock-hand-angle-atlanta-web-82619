def clock_angle(time)
    h = time.split(":")[0].to_f
    m = time.split(":")[1].to_f

    if h == 12
        h = 0
    end
       
    minute_angle = 6 * m  
    hour_angle =  30 * h + m/60 * 30
    angle = (hour_angle - minute_angle).abs
    angle = [360 - angle, angle].min
end
