class DashboardController < ApplicationController
  def index
    @joblist = Job.desc(:LastTaskResult).where(:NextRunTime.lt => 25.hours.ago)
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
