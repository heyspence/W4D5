class Shoe
    attr_accessor :arr
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

    def two_sum
        new_arr = []
        (0...arr.length-1).each do |i1|
            (i1+1...arr.length).each do |i2|
                if arr[i1] + arr[i2] == 0
                    new_arr << [i1, i2]
                end
            end
        end

        new_arr
    end
end
