class TribemachineController < ApplicationController
  layout 'tribemachine'
  
  def start
     @title = "The Tribe Machine"
     @user = User.new
   end

end
