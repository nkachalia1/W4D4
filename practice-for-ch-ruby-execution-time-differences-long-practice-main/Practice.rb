class Phase_1
    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

    def my_min_list(list)
        current_min = list[0]
        list.length.times do
            list.each do |el|
                if el < current_min
                    current_min = el
                end
            end
        end

        current_min
    end

    def list_2(list)
        current_min = list[0]
        list.each do |el|
            if el < current_min
                current_min = el
            end
        end

        current_min
    end
end
