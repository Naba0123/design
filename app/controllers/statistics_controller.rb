class StatisticsController < ApplicationController
  before_action :check_admin

  def index
    @nameArr=params[:name]
    @search=[]
    @queryString=params[:q]
    if @queryString != nil
      @queryNumber=@queryString.size
      @queryNumber.times do |num|
        @search << User.search(@queryString[num])
      end
    else
        @queryNumber=0
        @nameArr=[]
        @nameArr << "条件1"
        @search << User.search(@queryString)
    end
    @search << User.search(nil)
  end
  
  private
    
    def check_admin
      unless @current_user.user_type == :admin
        redirect_to nopermission_users_path
      end
    end
  
end
