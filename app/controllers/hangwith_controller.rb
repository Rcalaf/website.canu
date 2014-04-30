class HangwithController < ApplicationController
	layout 'hangwith'

 
  def hwa
    @title = "CANU - Hang with the gang"
    @body_class = "hangwith_a"
    @user = User.new
  end
  
  def hwb
      @title = "CANU - Hang with the gang"
      @body_class = "hangwith_b"
      @user = User.new
  end
  
  def hwc
      @title = "CANU - Hang with the gang"
      @body_class = "hangwith_c"
      @user = User.new
  end
  
  
  
end
