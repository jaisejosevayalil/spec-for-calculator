class Calculator

  def self.add(numbers)
      return 0 if numbers.empty?
      if numbers.start_with?("//")
        delimitrs, numbers = numbers[2..].split("\n", 2)
        numb = numbers.split(delimitrs).map(&:to_i)
      else
        numb = numbers.tr("\n", ',').split(',').map(&:to_i)
      end

      negatives = numb.select(&:negative?)
      raise "negative are not allowed: #{negatives.join(', ')}" if negatives.any?

      numb.sum

  end
end