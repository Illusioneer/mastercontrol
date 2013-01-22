class InstancesController < ApplicationController
  # GET /instances
  # GET /instances.json
  def index
    @instances = Instance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @instances }
    end
  end

  # GET /instances/1
  # GET /instances/1.json
  def show
    @instance = Instance.where(:instanceid => params[:instanceid]).first #find(params[:id]) 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @instance }
    end
  end

  # GET /instances/new
  # GET /instances/new.json
  def new
    @instance = Instance.new

    respond_to do |format|
      format.html #new.html.erb
      format.json { render json: @instance }
    end
  end

  # GET /instances/1/edit
  def edit
   @instance = Instance.where(:instanceid => params[:instanceid]).first #find(params[:id]) 
  end

  # POST /instances
  # POST /instances.json
  def create
    @instance = Instance.new(params[:instance])

    respond_to do |format|
      if @instance.save
        format.html { redirect_to "/instances/#{@instance.instanceid}/show", notice: "Instance was successfully created." }
        format.json { render json: @instance, status: :created, location: @instance }
      else
        format.html { render action: "new" }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /instances/1
  # PUT /instances/1.json
  def update
    @form = params[:instance]
    @instance = Instance.find(params[:id])
    @instance.instancegroups = params[:instance]['instancegroups'].delete_if {|x| x == "" } 
    @instance.notingroups = params[:instance]['notingroups'].delete_if {|x| x == "" } 

    respond_to do |format|
      if @instance.save(@form)
       format.html { redirect_to "/instances/#{@instance.instanceid}/show", notice: "Instance was successfully updated." }
       format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instances/1
  # DELETE /instances/1.json
  def destroy
    @instance = Instance.find(params[:id])
    @instance.destroy

    respond_to do |format|
      format.html { redirect_to instances_url }
      format.json { head :no_content }
    end
  end
end
