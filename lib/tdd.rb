class Shoe 
    attr_reader :arr
    def initialize(arr)
        @arr = arr
    end

    def my_uniq
        new_arr = []
        arr.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
            end
        end
        new_arr
    end
end