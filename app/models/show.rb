class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters

    def actors_list
        Character.all.map {|character| character.actor.first_name + " " + character.actor.last_name}
    end
end