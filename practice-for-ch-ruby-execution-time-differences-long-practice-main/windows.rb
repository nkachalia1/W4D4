class Windows

    def windowed_max_range(array, window_size)
        current_max_range = nil
        sub_arrs = []
        i = 0
        j = i + window_size-1
        while j < array.length
            sub_arrs << array[i..j]
            i += 1
            j += 1
        end

        range = []

        sub_arrs.each do |sub_arr|
            max = sub_arr.max()
            min = sub_arr.min()
            range << max - min
        end

        range.max()
    end
end

# O(n**2)
