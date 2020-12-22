class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  # def all_salary
  #   character_salarys = []
  #   @characters.sort_by do |character|
  #     character_salarys << character.salary
  #   end
  #   character_salarys.pop
  # end
  #
  # def highest_paid
  # highest_paid = []
  #   @characters.each do |character|
  #     highest_paid << character if character.salary > all_salary
  #   end
  #   highest_paid
  # end
  #
  # def highest_paid_actor
  #   actor = []
  #   highest_paid.find do |character_data|
  #     actor << character_data.actor
  #   end
  #   actor.shift
  # end

  # def highest_paid_actor
  #   highest_paid = @characters.max_by do |character|
  #     character.salary
  #   end
  #   highest_paid.actor
  # end

  def highest_paid_actor
    @characters.max_by do |character|
      character.salary
    end.actor
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end
end
