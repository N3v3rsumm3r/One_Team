class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
    @users = User.all
  end

  # GET /projects/1/edit
  def edit
    @users = User.all
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @users = User.all

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      puts "Prior to update action in the update method."
      if @project.update(project_params)
        puts "Update method has successfully run."
        format.html { redirect_to @project, notice: 'Project was successfully updated.'; puts "Redirect to project has succeeded." }
        format.json { render :show, status: :ok, location: @project }
      else
        puts "Update method has failed, should render edit."
        @users = User.all
        format.html { render :edit ; puts "Render edit has succeeded" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
  
    def collection_resources
      @users = User.all
    end
  
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :start_date, :end_date, :user_id)
    end
end
