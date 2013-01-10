class DashboardController < ApplicationController
  def index
    
    @oneday = Job.where(:Timestamp.gt => 2.days.ago)
    @twoday = Job.where(:Timestamp.gt => 4.days.ago).where(:Timestamp.lt => 3.days.ago)
  end

  def show
    @oneday = Job.where(:Timestamp.gt => 2.days.ago)
    @twoday = Job.where(:Timestamp.gt => 4.days.ago).where(:Timestamp.lt => 3.days.ago)
    @nagios = Nagios.last.servicestatus.sort_by { |k| k["current_state"]}
    @dump = Nagios.service_history('pub-dashboard-dev')
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def nagios
    case entry['current_state']

    @nagios = Nagios.last.servicestatus.sort_by { |k| k["current_state"]}
    @dump = Nagios.service_history('pub-dashboard-dev')
  end
  
  def update
  end
  
end

