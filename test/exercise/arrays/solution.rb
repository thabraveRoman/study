module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.reduce { |acc, item| acc > item ? acc : item }
        array.map { |n| n.positive? ? max : n }
      end

      def search(array, query)
          left = 0
          right = array.length - 1
          if array.length == 0 || array[left] > query || array[right] < query
            return -1
          else
            while left <= right
              middle = (left + right) / 2
              if array[middle] == query
                return middle
              elsif array[middle] > query
                right = middle - 1
              elsif array[middle] < query
                left = middle + 1
              else
              end
            end
            return -1
          end
        end
    end
  end
end
