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
        return -1 if array.empty? || query < array.first || query > array.last

        mid = array.count / 2
        return mid if query == array[mid]

        query < array[mid] ? search(array[0..mid - 1], query) : search(array[mid + 1..], query) + mid + 1
      end
    end
  end
end
