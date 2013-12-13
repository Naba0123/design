class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  
  before_action :check_logined
  
  private
  
  def check_logined
    if session[:user_id]
      begin
        @user = User.find(session[:user_id])
      rescue ActiveRecord::RecordNotFound
        flash.notice = "例外エラーが発生しました。"
        reset_session
      end
    end
    unless @user
      redirect_to :controller => 'sessions', :action => 'new'
    end
  end
  
end
