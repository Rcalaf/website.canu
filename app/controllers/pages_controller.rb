class PagesController < ApplicationController
  layout 'main_page', :except => [:jobs, :press, :contacts, :about, :privacy]
  
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
end
