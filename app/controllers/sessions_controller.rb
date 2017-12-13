class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    return redirect_to(controller: 'sessions',
                       action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/show'
  end

  def destroy
    return redirect_to(controller: 'sessions',
                        action: 'new') if !session[:name] || session[:name].empty?
    session.delete :name
    redirect_to '/'
  end

end
