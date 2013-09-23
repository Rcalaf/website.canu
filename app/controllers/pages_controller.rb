class PagesController < ApplicationController
  layout 'main_page', :except => [:jobs, :press, :contacts, :about, :privacy, :terms, :help]
  
  def index
     @title = "CANU - Get Together"
     @user = User.new
   end

   def about
     @title = "CANU - About Us"
     @user = User.new
   end

   def world
     @title = "CANU - World"
     @user = User.new
   end

   def product
     @title = "CANU - Product"
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
