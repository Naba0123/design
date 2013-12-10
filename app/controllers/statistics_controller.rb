class StatisticsController < ApplicationController
  def index
    @search = User.search(params[:q])
  end
end
