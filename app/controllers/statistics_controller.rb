class StatisticsController < ApplicationController
  def index
    @queryNumber=params[:num].to_i
    if @queryNumber == 0
      @queryNumber=1
    end
    @search=[]
    @test=params[:q][0]
    @queryNumber.times do |num|
      @search << User.search(params[:q][num])
    end
  end
end
