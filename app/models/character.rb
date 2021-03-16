class Character < ActiveRecord::Base
    belongs_to :actor 
    belongs_to :show
    
    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end
    def build_show(hash)
        self.show = Show.find_or_create_by(hash)
    end

    def build_network(hash)
        self.network = Network.find_or_create_by(hash)
    end

end