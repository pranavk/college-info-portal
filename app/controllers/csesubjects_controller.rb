class CsesubjectsController < ApplicationController
  # GET /csesubjects
  # GET /csesubjects.json
  def index
    @csesubjects = Csesubject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @csesubjects, :except=> [:updated_at,:created_at] }
    end
  end

  # GET /csesubjects/1
  # GET /csesubjects/1.json
  def show
    @csesubject = Csesubject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @csesubject }
    end
  end

  # GET /csesubjects/new
  # GET /csesubjects/new.json
  def new
    @csesubject = Csesubject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @csesubject }
    end
  end

  # GET /csesubjects/1/edit
  def edit
    @csesubject = Csesubject.find(params[:id])
  end

  # POST /csesubjects
  # POST /csesubjects.json
  def create
    @csesubject = Csesubject.new(params[:csesubject])

    respond_to do |format|
      if @csesubject.save
        format.html { redirect_to @csesubject, :notice => 'Csesubject was successfully created.' }
        format.json { render :json => @csesubject, :status => :created, :location => @csesubject }
      else
        format.html { render :action => "new" }
        format.json { render :json => @csesubject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /csesubjects/1
  # PUT /csesubjects/1.json
  def update
    @csesubject = Csesubject.find(params[:id])

    respond_to do |format|
      if @csesubject.update_attributes(params[:csesubject])
        format.html { redirect_to @csesubject, :notice => 'Csesubject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @csesubject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /csesubjects/1
  # DELETE /csesubjects/1.json
  def destroy
    @csesubject = Csesubject.find(params[:id])
    @csesubject.destroy

    respond_to do |format|
      format.html { redirect_to csesubjects_url }
      format.json { head :no_content }
    end
  end
end
