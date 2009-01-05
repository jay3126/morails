class MdlUsersController < ApplicationController
  # GET /mdl_users
  # GET /mdl_users.xml
  def index
    @mdl_users = MdlUser.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mdl_users }
    end
  end

  # GET /mdl_users/1
  # GET /mdl_users/1.xml
  def show
    @mdl_user = MdlUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mdl_user }
    end
  end

  # GET /mdl_users/new
  # GET /mdl_users/new.xml
  def new
    @mdl_user = MdlUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mdl_user }
    end
  end

  # GET /mdl_users/1/edit
  def edit
    @mdl_user = MdlUser.find(params[:id])
  end

  # POST /mdl_users
  # POST /mdl_users.xml
  def create
    @mdl_user = MdlUser.new(params[:mdl_user])

    respond_to do |format|
      if @mdl_user.save
        flash[:notice] = 'MdlUser was successfully created.'
        format.html { redirect_to(@mdl_user) }
        format.xml  { render :xml => @mdl_user, :status => :created, :location => @mdl_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mdl_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mdl_users/1
  # PUT /mdl_users/1.xml
  def update
    @mdl_user = MdlUser.find(params[:id])

    respond_to do |format|
      if @mdl_user.update_attributes(params[:mdl_user])
        flash[:notice] = 'MdlUser was successfully updated.'
        format.html { redirect_to(@mdl_user) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mdl_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mdl_users/1
  # DELETE /mdl_users/1.xml
  def destroy
    @mdl_user = MdlUser.find(params[:id])
    @mdl_user.destroy

    respond_to do |format|
      format.html { redirect_to(mdl_users_url) }
      format.xml  { head :ok }
    end
  end
end
