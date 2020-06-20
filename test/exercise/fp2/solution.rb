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
        my_reduce(MyArray.new, &(function = ->(acc, element) { acc << func.call(element) }))
      end

      # Написать свою функцию my_compact
      def my_compact
        my_reduce(MyArray.new, &(function = ->(acc, element) { element.nil? ? acc : acc << element }))
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil, &func)
        my_each { |element| acc = acc.nil? ? element : func.call(acc, element) }
        acc
      end
    end
  end
end
