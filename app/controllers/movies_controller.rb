class MoviesController < ApplicationController

  def index

    @list_of_movies = Movie.all

    render({ :template => "movie_templates/index.html.erb"})

  end

  def movie_details

    @id_num = params.fetch("an_id")
    @mov = Movie.where({:id => @id_num}).at(0)

    render({:template => "movie_templates/show_mov.html.erb"})

  end

end
