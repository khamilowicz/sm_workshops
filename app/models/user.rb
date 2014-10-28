class User < ActiveRecord::Base 

  has_many :posts

  def full_name
    name + " " + last_name
  end 
end
