class SessionsController < ApplicationController

  skip_before_action :check_logined

  def index
    render 'new'
  end
  
  def new
    # セッション中ならログイン後ページに行く
    if session[:user_id]
      flash.notice = "既にログインしています"
      redirect_to :root
    end
  end
  
  def create
    user = User.find_by_account params[:account]
    if user && user.authenticate(params[:pass])
      session[:user_id] = user.id
      flash.notice = "ログインしました"
      redirect_to :root
    else
      flash.notice = "アカウント名またはパスワードが間違っています"
      redirect_to :controller => 'sessions', :action => 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash.notice = "ログアウトしました。"
    redirect_to :controller => 'sessions', :action => 'new'
  end
  
end
