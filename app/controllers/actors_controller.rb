class ActorsController < ApplicationController

  def index

    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})

  end

  def actor_details

    @id_num = params.fetch("an_id")
    @act = Actor.where({:id => @id_num}).at(0)

    @filmography = Movie.where({ :actor_id => @act.id})

    render({:template => "actor_templates/show_act.html.erb"})

  end

end
