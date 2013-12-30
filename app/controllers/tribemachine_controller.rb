class TribemachineController  < ActionController::Base
  layout 'tribemachine'
  
  def start
     @title = "The Tribe Machine"
     @user = User.new
   end

end
