class User < ActiveRecord::Base
  attr_accessible :code, :email, :name, :used
  
  validates :email, :presence => {:presence => true,:message => "Please insert an e-mail"}
  validates :name, :presence => {:presence => true,:message => "Please insert your name"}
  #validates :code, :presence => {:presence => true,:message => "Please insert a code"}
end
