class User < ActiveRecord::Base
  attr_accessible :email
  
  validates :email, :presence => {:presence => true,:message => "Insert an e-mail"}
  validates :email, :uniqueness => {:uniqueness => true,:message => "We already know you :)"}
  
end
