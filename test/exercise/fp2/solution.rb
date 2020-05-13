module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each(&func)
        for element in self
          func.call(element)
        end
      end

      # Написать свою функцию my_map
      def my_map(&func)
        result = MyArray.new
        self.my_each { |element| result << func.call(element) }
        return result 
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new
        self.my_each { |element| element.nil? ? result : result << element }
        return  result
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil, &func)
        acc = acc.nil ? element : func.call(acc, element)
        return acc 
      end
    end
  end
end
