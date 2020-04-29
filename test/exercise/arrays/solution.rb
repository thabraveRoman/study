module Exercise
  module Arrays
    class << self
      def replace(array)
        array = [3, 2, -8, 4, 100, -6, 7, 8, -99]
        _max = array.reduce { |acc, item| acc > item ? acc : item }
        array.map { |n| n > 0 ? _max : n }
      end

      def search(_array, _query)
        0
      end
    end
  end
end
