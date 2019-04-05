class User < ApplicationRecord
    #the formulas that they have created
    has_many :formulas 
    
      # the formulas that they have liked 
    has_many :favourites
    has_many :formulas, through: :favourites
    has_secure_password
    
  

end
