class Bcse6sController < ApplicationController

  def reset
    respond_to do |format|
      format.html # reset.html.erb
    end
  end

  def recreate
    Bcse6.delete_all
    @no = params[:noofgroups].to_i
    @no = @no*45
    i=0
    @no.times { 
      Bcse6.new{|p| p.id=i }.save
      i+=1
    }
    redirect_to bcse6s_path
  end

  # GET /bcse6s
  # GET /bcse6s.json
  def index
    @bcse6s = Bcse6.find(:all, :include => :csesubject, :include => :cseteacher)
    @no = Bcse6.all.count.to_i
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bcse6s, :except=>[:created_at,:updated_at] }
    end
  end

  # GET /bcse6s/1
  # GET /bcse6s/1.json
  def show
    @bcse6 = Bcse6.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bcse6 }
    end
  end

  # GET /bcse6s/new
  # GET /bcse6s/new.json
  def new
    @bcse6 = Bcse6.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bcse6 }
    end
  end

  # GET /bcse6s/1/edit
  def edit
    @bcse6 = Bcse6.find(params[:id])
  end

  # POST /bcse6s
  # POST /bcse6s.json
  def create
    @bcse6 = Bcse6.new(params[:bcse6])

    respond_to do |format|
      if @bcse6.save
        format.html { redirect_to @bcse6, :notice => 'Bcse6 was successfully created.' }
        format.json { render :json => @bcse6, :status => :created, :location => @bcse6 }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bcse6.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bcse6s/1
  # PUT /bcse6s/1.json
  def update
    @bcse6 = Bcse6.find(params[:id])

    respond_to do |format|
      if @bcse6.update_attributes(params[:bcse6])
        format.html { redirect_to bcse6s_path, :notice => 'Bcse6 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bcse6.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bcse6s/1
  # DELETE /bcse6s/1.json
  def destroy
    @bcse6 = Bcse6.find(params[:id])
    @bcse6.destroy

    respond_to do |format|
      format.html { redirect_to bcse6s_url }
      format.json { head :no_content }
    end
  end
end
