module Exercise
  module Arrays
    class << self
      def search_maximum(numbers)
        maximum = numbers[0]
        numbers.each { |number| number > maximum ? maximum = number : maximum }
        maximum
      end

      def replace(array)
        maximum = search_maximum(array)
        array.map { |el| el.positive? ? maximum : el }
      end

      def search(array, query)
        return -1 if array.empty? || (array.last < query)

        mid = array.count / 2
        if query == array[mid]
          mid
        elsif query < array[mid]
          search(array[0..mid - 1], query)
        elsif query > array[mid]
          search(array[mid + 1..], query) + mid + 1
        end
      end
    end
  end
end
