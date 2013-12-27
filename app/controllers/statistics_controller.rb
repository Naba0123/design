class StatisticsController < ApplicationController
  def index
    @queryNumber=params[:num].to_i
    if @queryNumber == 0
      @queryNumber=1
    end
    @search=[]
    @queryString=params[:q]
    if @queryString != nil
      @queryNumber.times do |num|
        @search << User.search(@queryString[num])
      end
    else
        @search << User.search(@queryString)
    end
    @search << User.search(nil)
  end
  
end
