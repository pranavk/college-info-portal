class EventsController < ApplicationController

  before_filter :authenticate_user, :only => [:index, :show, :edit, :update, :create, :destroy, :new]
  before_filter :save_login_state, :only => [:login, :login_attempt]

  def login

  end

  def login_attempt
    auth_user = Club.authenticate(params[:username],params[:password])
    if auth_user
      session[:user_id] = auth_user.id
      redirect_to(:action => 'index')
    else
      flash[:notice] ="invalild"
      render 'login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to :action=> "login"
  end

  # GET /events
  # GET /events.json
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @events }
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, :notice => 'Event was successfully created.' }
        format.json { render :json => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, :notice => 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  protected
  def authenticate_user
    unless session[:user_id]
      redirect_to(:controller=> "events",:action=>"login")
      return false
    else
      @current_club = Club.find session[:user_id]
    end
  end

  def save_login_state
    if session[:user_id]
      redirect_to(:controller=>"events",:action=>"index")
      return false
    else
      return true
    end
  end

end
