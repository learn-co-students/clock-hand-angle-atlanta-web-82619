def clock_angle(time)
    # code your solution here
    h = time.split(":")[0].to_i
    m = time.split(":")[1].to_i
    angle = nil

    if h == 12
        h = 0
    end
    if m == 60
        m = 0
    end
      
    hour_angle = 0.5 * (h * 60 + m) 
    minute_angle = 6 * m  
    angle = (hour_angle - minute_angle).abs
    angle = [360 - angle, angle].min
end
