class Parse
  def self.parse(score)
    balls = score.chars
    puts score.to_s
    puts balls.to_s
    converted_array = []

    for i in 0..balls.length-1
      converted = convert(balls[i])
      if converted == "/"
      	converted = spare(balls[i-1], converted)
      end
      converted_array << converted
    end

    converted_array
  end

  def self.convert(frame)
  	if frame == "X"
  	  10
  	elsif frame == "-"
  	  0
  	elsif frame == "/"
  	  frame
  	else
  	  frame.to_i
  	end
  end

  def self.spare(previous, current)
  	current = 10 - convert(previous)
  	current
  end
end