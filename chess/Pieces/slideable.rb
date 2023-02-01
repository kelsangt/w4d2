module Slideable
    HORIZONTAL_DIRS = [
    [-1, 0], #left
    [1, 0], #right
    [0, 1], #up
    [0, -1] #down
].freeze 

    DIAGONAL_DIRS = [
    [-1, 1], #up-left
    [1, 1], #up-right
    [-1, -1], #down-left
    [1, -1] #down-right
].freeze


    def horizontal_dirs 
        HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        DIAGONAL_DIRS
    end

    def moves 

        arr_of_moves = []

        

        move_dirs
    end

    private 

    def move_dirs 
        raise NotImplementedError.new "Not Implemented"
    end

    def grow_unblocked_moves_in_dir(dx, dy)

    end
end