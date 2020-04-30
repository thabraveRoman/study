module Exercise
  module Arrays
    class << self
      def replace(array)
        
        max = array.reduce { |acc, item| acc > item ? acc : item }
        array.map { |n| n > 0 ? max : n }
      end

      def search(_array, _query)
        0
      end
    end
  end
end
