class Character < ActiveRecord::Base #join tables have singular, AR knows and looks for the pluralization  
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end


end