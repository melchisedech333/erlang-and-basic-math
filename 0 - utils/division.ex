
import Utils, only: [number_to_list: 1, sums_elements: 1]

defmodule Division do
    def divisible_by(value, number) do
        case number do
            2  -> rem(value, number) == 0
            3  -> divisible_by_3(value)
            4  -> divisible_by_4(value)
            5  -> false
            6  -> false
            7  -> false
            8  -> false
            9  -> false
            10 -> false
            11 -> false
            12 -> false
            15 -> false
            25 -> false
            _  -> 
                IO.puts("Division by #{number} not supported.")
                false
        end
    end

    def divisible_by_3(value) do
        list  = number_to_list(value)
        total = sums_elements(list)
        rem(total, 3) == 0
    end

    def divisible_by_4(value) do

    end
end


