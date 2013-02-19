class ApiController < ApplicationController

  def index
    @apis = Api.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apis }
      format.atom { render :action=>'index',:layout=>false }
      format.rss { render :layout => false }
    end
  end

  # GET /apis/1
  # GET /apis/1.json
  def show

    params.delete("action")
    params.delete("controller")
    render :text => params
   # @api = Api.where(title_slug: params[:id]).all.first
   # respond_to do |format|
   #   format.html # show.html.erb
   #   format.json { render json: @api }
   # end
  end

  def showgroups

    @groups = Group.all.map{|b| [b.groupname]}
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @groups }
      format.atom { render :action=>'index',:layout=>false }
      format.rss { render :layout => false }
    end
    
  end
  
  # GET /apis/new
  # GET /apis/new.json
  def new
    @api = Api.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @api }
    end
  end

  # GET /apis/1/edit
  def edit
    @api = Api.find(params[:id])
  end

  # POST /apis
  # POST /apis.json
  def create

    params.delete("action")
    params.delete("controller")
    @api = Instance.new(params)


    respond_to do |format|
      if @api.save
        format.json { render json: @api, status: :created, location: @api }
      else
        format.html { render action: "new" }
        format.json { render json: @api.errors, status: :unprocessable_entity }
      end
    end
  end

  def lastcheck
    @lastcheck = Servicestatus.uptime(params["range"].to_i.days.ago, Time.now, params["service"], params["hostname"])

    respond_to do |format|
      if @lastcheck
        format.html { render text: @lastcheck }
        format.json { render json: @lastcheck }
      else
        @lastcheck = "Data Invalid"
        format.html { render text: "Noooooooooooo" }
        format.json { render json: @lastcheck }
      end
    end
  end

  # PUT /apis/1
  # PUT /apis/1.json
  def update
    #params[:author] = current_user.user_id
    @api = Api.find(params[:id])

    respond_to do |format|
      if @api.update_attributes(params[:api])
        format.html { redirect_to api_path(@api.title_slug), notice: 'Api was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @api.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apis/1
  # DELETE /apis/1.json
  def destroy
    @api = Api.find(params[:id])
    @api.destroy

    respond_to do |format|
      format.html { redirect_to apis_url }
      format.json { head :ok }
      format.js   { render :nothing => true }
    end
  end

end
