module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      
      def my_print(num)
          p num 
      end
        
      def my_each(array, func)
          array.reduce { |acc, item| acc + func(item)}
      end
      

      # Написать свою функцию my_map
      def my_map(array, func)
        new_array = Array.new 
        array.reduce { |acc, item| new_array.push (acc  + func(item)) } #  Или array.reduce { |acc, item| acc + func(item) }.to_a
      end

      # Написать свою функцию my_compact
      def my_compact(array)
        array.reduce { |acc, item| item = nil ? acc : acc + item }.to_a
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc, item)
        return acc * item
      end
    end
  end
end
