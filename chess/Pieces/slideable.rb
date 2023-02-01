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

    def grow_unblocked_moves_in_dir(dx, dy) #assuming dx/dy is our starting pos rn
        HORIZONTAL_DIRS.each do |direction|
            dir_x, dir_y = direction
            dx + dir_x = new_x
            dy + dir_y = new_y
            
            if (new_x >= 0 && new_x <= 7) && (new_y >= 0 && new_y <= 7)
                arr_of_moves << [new_x, new_y]
            end
        end
    
    end
end