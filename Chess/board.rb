class Board
    attr_reader :board

    def initialize
        @board = Array.new(8) { Array.new(8) { "_" } }
    end

    def [](pos)
        x, y = pos
        @board[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @board[x][y] = val
    end

    def move_piece(color, start_pos, end_pos)

    end


end


p b = Board.new
p b[[1,1]] = :O
p b.board
