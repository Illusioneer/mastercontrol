class DashboardController < ApplicationController
  def index
    
    @oneday = Job.where(:Timestamp.gt => 2.days.ago)
    @twoday = Job.where(:Timestamp.gt => 4.days.ago).where(:Timestamp.lt => 3.days.ago)
  end

  def show
    @oneday = Job.where(:Timestamp.gt => 2.days.ago)
    @twoday = Job.where(:Timestamp.gt => 4.days.ago).where(:Timestamp.lt => 3.days.ago)
    @nagios = Nagios.last
    @dump = Nagios.service_history('adproxy1')
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

