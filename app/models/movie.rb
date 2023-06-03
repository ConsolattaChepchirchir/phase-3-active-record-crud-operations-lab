# inherits from ActiveRecord::Base
#   has a title
#   has a release date
#   has a director
#   has a lead actor/actress
#   has an in theaters flag
#   can be instantiated with a hash of attributes

class Movie < ActiveRecord::Base
# saves the title to the movie
# creates a new record in the database

    def self.create_with_title(title)
        Movie.create(title: title)

    end
    #       returns the first item in the movies table

    def self.first_movie
        Movie.first
    end
#       returns the number of items in the movies table

    def self.movie_count
        Movie.count
    end
#       returns the last item in the movies table

    def self.last_movie
        Movie.last
    end
    #       returns the movie with the corresponding id
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
#       returns the movie with the corresponding attributes
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end
    #       returns a list of movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end
    #       updates one movie
    def update_with_attributes(attributes)
        self.update(attributes)

    end
#       updates the title of all the movies

    def self.update_all_titles(title)
        Movie.update(title: title)
    end
    #       deletes the record with the corresponding id
    def self.delete_by_id(id)
        movie=Movie.find(id)
        movie.destroy

    end
#       deletes all the movies from the movies table

    def self.delete_all_movies
        Movie.destroy_all

    end

end