class SessionsController < ApplicationController
 
  def new
  end

  def create
    #binding.pry
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete(:name) unless session[:name].nil?
  end

  def user_params
    params.permit(:name)
  end

end
