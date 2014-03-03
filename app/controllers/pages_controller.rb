class PagesController < ApplicationController
  layout 'main_page', :except => [:jobs, :press, :contacts, :about, :vision, :support, :privacy, :terms, :help, :resetpassword, :start]
  
  def index
     @title = "CANU - Get Together"
     @user = User.new
   end
  
  def index_demo
      @title = "CANU - Get Together"
      @user = User.new
  end

   def about
     @title = "CANU - Our Story"
     @user = User.new
   end
   
   def vision
       @title = "CANU - Product Vision"
       @user = User.new
   end

   def jobs
     @title = "CANU - Get Together"
     @user = User.new
   end

   def contacts
     @title = "CANU - Get Together"
     @user = User.new
   end

   def press
     @title = "CANU - Get Together"
     @user = User.new
   end
   
   def support
       @title = "CANU - Support"
       @user = User.new
   end

    def privacy
     @title = "CANU - Privacy"
     @user = User.new
   end 
   
   def terms
     @title = "CANU - Terms of Service"
     @user = User.new
   end   
   
   def help
     @title = "CANU - Help"
     @user = User.new
   end    
   
      
end
