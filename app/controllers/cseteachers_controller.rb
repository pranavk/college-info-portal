class CseteachersController < ApplicationController
  # GET /cseteachers
  # GET /cseteachers.json
  def index
    @cseteachers = Cseteacher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @cseteachers, :except=> [:updated_at,:created_at] }
    end
  end

  # GET /cseteachers/1
  # GET /cseteachers/1.json
  def show
    @cseteacher = Cseteacher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @cseteacher }
    end
  end

  # GET /cseteachers/new
  # GET /cseteachers/new.json
  def new
    @cseteacher = Cseteacher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @cseteacher }
    end
  end

  # GET /cseteachers/1/edit
  def edit
    @cseteacher = Cseteacher.find(params[:id])
  end

  # POST /cseteachers
  # POST /cseteachers.json
  def create
    @cseteacher = Cseteacher.new(params[:cseteacher])

    respond_to do |format|
      if @cseteacher.save
        format.html { redirect_to @cseteacher, :notice => 'Cseteacher was successfully created.' }
        format.json { render :json => @cseteacher, :status => :created, :location => @cseteacher }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cseteacher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cseteachers/1
  # PUT /cseteachers/1.json
  def update
    @cseteacher = Cseteacher.find(params[:id])

    respond_to do |format|
      if @cseteacher.update_attributes(params[:cseteacher])
        format.html { redirect_to @cseteacher, :notice => 'Cseteacher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @cseteacher.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cseteachers/1
  # DELETE /cseteachers/1.json
  def destroy
    @cseteacher = Cseteacher.find(params[:id])
    @cseteacher.destroy

    respond_to do |format|
      format.html { redirect_to cseteachers_url }
      format.json { head :no_content }
    end
  end
end
