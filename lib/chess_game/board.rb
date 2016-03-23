module ChessGame
	

	class Board
		attr_accessor :board

		def initialize
			@board = Array.new(8){Array.new(8) { "  " }}
			load_board

		end

		def load_board
			@board.each do |row|
				@board[1] = Piece.new(:black, :pawn, [])
				@board[6] = Piece.new(:white, :pawn, [])
			end

			@board[0][0] = Piece.new(:black, :rook, [])
			@board[0][1] = Piece.new(:black, :knight, [])
			@board[0][2] = Piece.new(:black, :bishop, [])
			@board[0][3] = Piece.new(:black, :queen, [])
			@board[0][4] = Piece.new(:black, :king, [])
			@board[0][5] = Piece.new(:black, :bishop, [])
			@board[0][6] = Piece.new(:black, :knight, [])
			@board[0][7] = Piece.new(:black, :rook, [])

			@board[7][0] = Piece.new(:white, :rook, [])
			@board[7][1] = Piece.new(:white, :knight, [])
			@board[7][2] = Piece.new(:white, :bishop, [])
			@board[7][3] = Piece.new(:white, :queen, [])
			@board[7][4] = Piece.new(:white, :king, [])
			@board[7][5] = Piece.new(:white, :bishop, [])
			@board[7][6] = Piece.new(:white, :knight, [])
			@board[7][7] = Piece.new(:white, :rook, [])

		end

		
	end
end