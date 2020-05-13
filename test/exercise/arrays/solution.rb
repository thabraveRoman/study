module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.reduce { |acc, item| acc > item ? acc : item }
        array.map { |n| n.positive? ? max : n }
      end

      def search(array, query, left = 0, right = array.length - 1)
        middle = (left + right) / 2
        return -1 if array.empty? || left > right

        return middle if array[middle] == query

        array[middle] > query ? right = middle - 1 : left = middle + 1
        search(array, query, left, right)
      end
    end
  end
end
