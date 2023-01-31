class Board

    def initialize
        @rows = Array.new(8) {Array.new {[]}}
    end

    def [](pos)
        # x, y = [pos]
        @rows[pos]
    end

    def []=(pos, val)
        @rows[pos] = val
    end

    def move_piece(start_pos, end_pos)
        @rows[end_pos] = @rows[start_pos]
        @rows[start_pos] = 
    end
end