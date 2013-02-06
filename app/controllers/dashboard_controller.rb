class DashboardController < ApplicationController
  def index
    
    @oneday = Job.where(:Timestamp.gt => 2.days.ago)
    @twoday = Job.where(:Timestamp.gt => 4.days.ago).where(:Timestamp.lt => 3.days.ago)
  end

  def show
    @oneday = Job.where(:Timestamp.gt => 2.days.ago).sort_by { |k| k["LastTaskResult"]}
    @twoday = Job.where(:Timestamp.gt => 4.days.ago).where(:Timestamp.lt => 3.days.ago).sort_by { |k| k["LastTaskResult"]}
    @nagios = Nagios.last.servicestatus.sort_by { |k| k["current_state"]}
    @dump = Nagios.service_history('pub-dashboard-dev')
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def report
     @sites = Nagios.last.servicestatus.uniq! {|e| e["host_name"] }
  end

  def generate
    @sites = params[:reports]
    @start = params[:datestart]
    @end = params[:datestop]

    @instance = Instance.new(params[:instance])
    respond_to do |format|
      if @instance.save
        format.html { redirect_to "/instances", notice: "Instance was successfully created." }
        format.json { render json: @instance, status: :created, location: @instance }
      else
        format.html { render action: "new" }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  def nagios
    @nagios = Nagios.last.servicestatus.sort_by { |k| k["current_state"]}
    @dump = Nagios.service_history('pub-dashboard-dev')
  end
  
  def update
  end
  
end



