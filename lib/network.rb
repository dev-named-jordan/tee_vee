class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def main_characters
    main_character = []
    @shows.each do |show|
      show.characters.each do |character|
        main_character << character if character.name == character.name.upcase && character.salary > 500000
      end
    end
    main_character
  end

  def actors_by_show
  show_stuff = {}
  show_actors = []
  @shows.each do |show|
      show.characters.each do |show_data|
        show_actors << show_data.actor
        if show_stuff[show] == {}
          show_stuff[show] = show_data.actor
        else
          show_stuff[show] = show_actors.flatten
        end
      end
    end
    show_stuff
  end
end
