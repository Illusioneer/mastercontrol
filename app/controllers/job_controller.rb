class JobController < ApplicationController

  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }

    def index
      @jobs = Job.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @jobs }
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
     # @job= Job.where(title_slug: params[:id]).all.first
     # respond_to do |format|
     #   format.html # show.html.erb
     #   format.json { render json: @job}
     # end
    end

    # GET /apis/new
    # GET /apis/new.json
    def new
      @job= Job.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @job}
      end
    end

    # GET /apis/1/edit
    def edit
      @job= Job.find(params[:id])
    end

    # POST /apis
    # POST /apis.json
    def create

      @job= Job.new(params[:job])

      respond_to do |format|
        if @job.save
          format.json { render json: @job, status: :created, location: @job}
        else
          format.html { render action: "new" }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /apis/1
    # PUT /apis/1.json
    def update
      #params[:author] = current_user.user_id
      @job= Job.find(params[:id])

      respond_to do |format|
        if @job.update_attributes(params[:job])
          format.html { redirect_to api_path(@job.title_slug), notice: 'Api was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @job.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /apis/1
    # DELETE /apis/1.json
    def destroy
      @job= Job.find(params[:id])
      @job.destroy

      respond_to do |format|
        format.html { redirect_to apis_url }
        format.json { head :ok }
        format.js   { render :nothing => true }
      end
    end

  end
