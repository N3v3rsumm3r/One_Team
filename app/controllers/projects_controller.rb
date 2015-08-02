class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :owner, only: [:edit]

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
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.'}
      else
        @users = User.all
        format.html { render :edit ; puts "Render edit has succeeded" }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
  
    def owner
      @project = Project.find(params[:id])
      if !owner_of?(@project)
        flash[:danger] = "You do not have access to this action."
        redirect_to(projects_path)
      end
    end
  
    def collection_resources
      @users = User.all
    end
  
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :start_date, :end_date, :user_id)
    end
end
