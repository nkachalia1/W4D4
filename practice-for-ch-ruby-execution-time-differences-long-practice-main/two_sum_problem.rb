class TwoSum
    def bad_two_sum(arr, target)
        (0...arr.length-1).each do |i|
            (i...arr.length).each do |j|
                if arr[i] + arr[j] == target
                    return true
                end
            end
        end
        return false
    end
    #O(n**2)
    def okay_two_sum(arr, target)
        new_arr = arr.sort
        i = new_arr[0]
        j = new_arr[-1]
        while i < j
            if i + j == target
                return true
            elsif i + j < target
                i += 1
            elsif i + j > target
                j -= 1
            end
        end
        return false
    end
    #n(log(n)) because it has a sort method and a single iteration.
    def good_two_sum(arr, target)
        hash = Hash.new
        arr.each.with_index do |ele, i|
            hash[ele] = i
        end
        hash.each do |key, value|
            if hash.has_key?(target - key) && hash[target - key] != value
                return true
            end
        end
        return false
    end
    #O(n) because apparently hash.has_key is a O(1) method.
end