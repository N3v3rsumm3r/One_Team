class RequestsController < ApplicationController
  skip_before_action :admin_user
  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  #before_action :owner_admin, only: [:edit, :update, :destroy]
  before_action :collection_resources, only: [:edit, :create, :new, :update]

  # GET /requests
  # GET /requests.json
  def index
    if params.include?(:id)
      @requests = Request.where(user_id: params[:id])
    elsif params.include?(:active)
      @requests = Request.open
    elsif params.include?(:applied)
      @requests = Request.joins(:responses).open.where("responses.user_id = ?", current_user)
    else
      @requests = Request.all
    end
    @responses = Response.all
  end

  # GET /requests/1
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
    @request.open = true
    link_back
  end

  # GET /requests/1/edit
  def edit
    link_back
  end

  # POST /requests
  def create
    @request = Request.new(request_params)
    
  
    respond_to do |format|
      if @request.save
        format.html { redirect_to session.delete(:return_to), notice: 'User was assigned to request.' }
      else
        format.html { render :new }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    link_back
    Assignment.destroy(params[:assignment_id])
    respond_to do |format|
      format.html { redirect_to session.delete(:return_to), notice: 'User was unassigned from request.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end
  
    def collection_resources
      @projects = Project.all
      @locations = Location.all
      @departments = Department.all
      @groups = Group.all
      @users = User.all
      @skills = Skill.all
    end
  
    def owner_admin
      @request = Request.find(params[:id])
      if !owner_of?(@request) && !current_user.admin?
        flash[:danger] = "You do not have access to this action."
        redirect_to(requests_path)
      end
    end
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :description, :start_date, :end_date, :open, :project_id, :location_id, :department_id, :group_id, :user_id, :skill_ids => [])
    end
end
