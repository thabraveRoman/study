module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        sorted_array = array.select { |film| film['country'].to_s.include?(',') && film['rating_kinopoisk'].to_f.positive? }
        sum_of_ratings = sorted_array.map { |film| film['rating_kinopoisk'].to_f }
        sum_of_ratings.reduce(:+).to_f / sum_of_ratings.length
      end

      def chars_count(array, threshold)
        film_rating_select = array.select { |film| film['rating_kinopoisk'].to_f >= threshold }
        film_char_select = film_rating_select.select { |film| film['name'].include?('и') }
        film_char_count = film_char_select.map { |film| film['name'].count('и') }
        film_char_count.reduce { |acc, item| acc + item }
      end
    end
  end
end
