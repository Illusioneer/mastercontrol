class SessionsController < ApplicationController  
  def new  
  end  
  
  def create  
    if # authenticated?  
      session[:user_id] = user.userid  
      redirect_to root_url, :notice => "Logged in!"  
    else  
      flash.now.alert = "Invalid email or password"  
      render "new"  
    end  
  end  
  
  def destroy  
    session[:userid] = nil  
    redirect_to root_url, :notice => "Logged out!"  
  end  
end 