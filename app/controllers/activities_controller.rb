class ActivitiesController < ApplicationController
  before_filter :require_user
  
  # GET /activities
  # GET /activities.xml
  # GET /activities.fxml
  def index
    @activities = Activity.for(@current_user).recent

    respond_to do |format|
      ## format.html # index.html.erb
      format.xml  { render :xml => @activities }
      format.fxml  { render :fxml => @activities }
    end
  end

  # GET /activities/1
  # GET /activities/1.xml
  # GET /activities/1.fxml
  def show
    @activity = Activity.find(params[:id])

    respond_to do |format|
      ## format.html # show.html.erb
      format.xml  { render :xml => @activity }
      format.fxml  { render :fxml => @activity }
    end
  end

  # GET /activities/new
  # GET /activities/new.xml
  def new
    @activity = Activity.new

    respond_to do |format|
      ## format.html # new.html.erb
      format.xml  { render :xml => @activity }
    end
  end

  # GET /activities/1/edit
  def edit
    @activity = Activity.find(params[:id])
  end

  # POST /activities
  # POST /activities.xml
  # POST /activities.fxml
  def create
    @activity = Activity.new(params[:activity])

    respond_to do |format|
      if @activity.save
        flash[:notice] = 'Activity was successfully created.'
        ## format.html { redirect_to(@activity) }
        format.xml  { render :xml => @activity, :status => :created, :location => @activity }
        format.fxml  { render :fxml => @activity }
      else
        ## format.html { render :action => "new" }
        format.xml  { render :xml => @activity.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @activity.errors }
      end
    end
  end

  # PUT /activities/1
  # PUT /activities/1.xml
  # PUT /activities/1.fxml
  def update
    @activity = Activity.find(params[:id])
    @saved = @activity.update_attributes(params[:activity])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Activity was successfully updated.'
        ## format.html { redirect_to(@activity) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @activity }
      else
        ## format.html { render :action => "edit" }
        format.xml  { render :xml => @activity.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @activity.errors }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.xml
  # DELETE /activities/1.fxml
  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy

    respond_to do |format|
      ## format.html { redirect_to(activities_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @activity }
    end
  end
end