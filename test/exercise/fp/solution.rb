module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        array.map { |film| film["country"] > 1 ? film : nil }.compact
        array.map { |film| film["rating_kinopoisk"] > 0 ? film["rating_kinopoisk"] : nil }.compact
        array.reduce {|rating, film| (rate + film) / film }
      end

      def chars_count(_films, _threshold)
        array.map { |film| film[rating_kinopoisk] => n ? film : nil }.compact
        array.reduce { |acc, item| acc = acc + item.count("и") }
      end
    end
  end
end
