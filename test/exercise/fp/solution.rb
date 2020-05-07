module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        sorted_films = array.select { |film| film["country"] > 1 }
        films_rating = sorted_films.map { |film| film["rating_kinopisk"] > 0 }
        sum_of_ratings = films_rating.reduce { |acc, item| acc + item }
        result = sum_of_ratings % (sorted_films.reduce { |acc, item| acc + item})
      end

      def chars_count(array, threshold)
        film_select = array.select { |film| film["rating_kinipoisk"] > threshold }
        char_select = film_select.map { |film| film["name"].include("и") }
        total = char_select.reduce { |acc, item| acc + item.count("и") }
      end
    end
  end
end
