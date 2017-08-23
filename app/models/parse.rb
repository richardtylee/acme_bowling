class Parse
	class << self
	  def parse(data)
	    balls = data.chars
	    converted_array = []

	    for i in 0..balls.length-1
	      converted = convert(balls[i])
	      
	      if converted == "/"
	      	converted = spare(balls[i-1])
	      end
	      converted_array << converted
	    end

	    converted_array
	  end

	  def convert(ball)
	  	case ball
		  	when "X"
		  	  10
		  	when "-"
		  	  0
		  	when "/"
		  	  "/"
		  	else
		  	  ball.to_i
	  	end
	  end

	  def spare(previous)
	  	10 - convert(previous)
	  end
	end
end