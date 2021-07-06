class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters #if these are pluralized, it will return an array of objects. if you receive this Character::ActiveRecord_Associations_CollectionProxy as a class it is an array but singular, (belongs to) attributes will only return a single object
    
  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    list = {}

    characters.collect{|character|
        "#{character.name} - #{character.show.name}"
    }       
  end
end