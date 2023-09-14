# class TimeComp
    list1 = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    list2 = [5, 3, -7]
    list3 = [2, 3, -6, 7, -6, 7]
    list4 = [-5, -1, -3]

    def my_min_list(arr)
        current_min = arr[0]
        arr.length.times do
            arr.each do |el|
                if el < current_min
                    current_min = el
                end
            end
        end

        current_min
    end

    def my_min_list_2(arr)
        current_min = arr[0]
        arr.each do |el|
            if el < current_min
                current_min = el
            end
        end
        current_min
    end

    def subsum(arr)
        subsums =[]
        (0...arr.length-1).each do |start|
            (start...arr.length).each do |stop|
                subsums << arr[start..stop] 
            end
        end
        current_max = subsums[0].sum
        subsums.each do |subsum|
            if subsum.sum > current_max
                current_max = subsum.sum
            end
        end
        current_max
    end
# end

p my_min_list(list1)
p subsum(list2)
p subsum(list3)
p subsum(list4)