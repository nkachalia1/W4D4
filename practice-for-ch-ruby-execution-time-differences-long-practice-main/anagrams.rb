class Anagrams

    def first_anagram(string1, string2)
        arr = string1.downcase.split("") # O(1)
        permutated = arr.permutation(arr.length).to_a # O(n!)
        new_arr = []
        permutated.each do |el| # O(n)
            if !new_arr.include?(el) # O(n)
                new_arr << el.join("")# O(1)
            end
        end

        new_arr.include?(string2)
    end

    # O(n!)

    def second_anagram(string1, string2)
        # new_string = ""
        string1.each_char do |char1|
            string2.each_char.with_index do |char2, i|
                if char2 == char1
                    $new_string = string2[0...i] + string2[i+1..-1]
                # else
                #     new_string = string2
                end
            end
            string2 = $new_string
            p string2
        end
        $new_string.length == 0 && string1.length == string2.length
    end

    def third_anagram(string1, string2)
        alphabet = ("a".."z").to_a
        string_as_numbers1 = []
        string_as_numbers2 = []
        string1.each_char do |char|
            string_as_numbers1 << alphabet.index(char)
        end

        string2.each_char do |char|
            string_as_numbers2 << alphabet.index(char)
        end

        string_as_numbers1.sort == string_as_numbers2.sort
    end

    #O(n(log(n)))

    def fourth_anagram(string1, string2)
        counter1 = Hash.new(0)
        counter2 = Hash.new(0)

        string1.each_char do |char|
            counter1[char] += 1
        end
        string2.each_char do |char|
            counter2[char] += 1
        end

        counter1 == counter2
    end

    # O(n)

end
