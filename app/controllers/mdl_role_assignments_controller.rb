class MdlRoleAssignmentsController < ApplicationController
  # GET /mdl_role_assignments
  # GET /mdl_role_assignments.xml
  def index
    @mdl_role_assignments = MdlRoleAssignment.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mdl_role_assignments }
    end
  end

  # GET /mdl_role_assignments/1
  # GET /mdl_role_assignments/1.xml
  def show
    @mdl_role_assignment = MdlRoleAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mdl_role_assignment }
    end
  end

  # GET /mdl_role_assignments/new
  # GET /mdl_role_assignments/new.xml
  def new
    @mdl_role_assignment = MdlRoleAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mdl_role_assignment }
    end
  end

  # GET /mdl_role_assignments/1/edit
  def edit
    @mdl_role_assignment = MdlRoleAssignment.find(params[:id])
  end

  # POST /mdl_role_assignments
  # POST /mdl_role_assignments.xml
  def create
    @mdl_role_assignment = MdlRoleAssignment.new(params[:mdl_role_assignment])

    respond_to do |format|
      if @mdl_role_assignment.save
        flash[:notice] = 'MdlRoleAssignment was successfully created.'
        format.html { redirect_to(@mdl_role_assignment) }
        format.xml  { render :xml => @mdl_role_assignment, :status => :created, :location => @mdl_role_assignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mdl_role_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mdl_role_assignments/1
  # PUT /mdl_role_assignments/1.xml
  def update
    @mdl_role_assignment = MdlRoleAssignment.find(params[:id])

    respond_to do |format|
      if @mdl_role_assignment.update_attributes(params[:mdl_role_assignment])
        flash[:notice] = 'MdlRoleAssignment was successfully updated.'
        format.html { redirect_to(@mdl_role_assignment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mdl_role_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mdl_role_assignments/1
  # DELETE /mdl_role_assignments/1.xml
  def destroy
    @mdl_role_assignment = MdlRoleAssignment.find(params[:id])
    @mdl_role_assignment.destroy

    respond_to do |format|
      format.html { redirect_to(mdl_role_assignments_url) }
      format.xml  { head :ok }
    end
  end
end
