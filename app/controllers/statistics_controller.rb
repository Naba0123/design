class StatisticsController < ApplicationController
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
  
end
