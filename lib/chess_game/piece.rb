module ChessGame

	class Piece
		attr_accessor :symbol, :move, :color, :
		def initialize(symbol, color)
			
			@piece = Struct.new( :color,:symbol, :moves )
			@steps = steps
			@direction = direction
		end
		def move(current, target)
			is_allowed? && boardable? 


		end
		def steps(array)
			array.first = 1.abs
			array.last = 1.abs
		end

		def piece_map
		end

		def direction
		end


	  def piece_map(letter)
	    case letter
	    when 'R'
	      return :rook
	    when 'N'
	      return :knight 
	    when 'B'
	      return :bishop
	    when 'Q'
	      return :queen
	    when 'K'
	      return :king
	    else
	      return :pawn
	    end
	  end

	  def direction_map(current, target)
	  	# if current[x] > target[x] return :up
	  	# if current[x]> target[x] && current[y]< target[y] return :diag_up# 
	  	# if current[x] < target[x] return :down
	  	# if current[x] > target[x] && current[y]< target[y] return :diag_down
	  	# if current[x] == target[x] && current[y]> target[y] return :left
	  	# if current[x] == target[x] && current[y]< target[y] return :right
	  	# 
	  end

	  def step_map(direction,current, target)
	  	# if :knight
	  	# x_step = 0
	  	# x_step = (current.first - target.first).abs 
			# y_step = 0
	  	# y_step = (current.last - target.last).abs 
		  elsif :up || :down 
		  	steps = current.first - target.first.abs

		  else 
		  	steps = current.last - target.last.abs

		  end
		 end
		 def path(direction, steps, current)
		 	#	take #{steps} step in the #{direction} direction (current, target)
		 	# @board.each.with_index do |row, index|
		 	# 	row.each.with_index do |col, index|
		 	case direction 
		 	when :up
		 		current.last += steps
			when :down
				current.last -= steps
			when :left
				current.first -= steps
			when :right
				current.first += steps
			when :diag_up
				current.last += steps
				current.first -= steps
			else
				current.last -= steps
				current.first += steps
			end
		 end

		 def clear_path?(direction, steps,current)
		 	return true if path(direction, steps, current) == @board.empty? 



		 end

		 def draw_path(current, target, result = [],steps)
		 	#result << if steps <= 1 direction else or until steps ==1
		 	#current = result.last
		 	#recursively add steps between current and target exclusively
		 	#[[1,1],[2,2],[3,3]]where current =0,0 and target = 4,4
		 	#steps -= 1
		 	#result << direction
		 	#if diag_down(x+1...x),(y+1...y) draw_path(current +)


	  end





	end

	class Pawn < Piece

		def legal
			if move.first
				step(0..1)
			else
				step()
		end

	end
	class Bishop < Piece

		def legal?(direction, steps)
			:diag_up && :diag_down && clear_path?
		end

	end
	class Rook < Piece

		def legal?(direction, steps)
			:up && :down && clear_path?
		end

	end

	class King < Piece

		def legal?(direction, steps)
			:diag_up && :diag_down && clear_path?
		end

	end
	class Queen < Piece
	end
end