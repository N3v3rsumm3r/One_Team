class RequestsController < ApplicationController
  before_action :logged_in_user
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json
  def index
    @requests = Request.all
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
    @project = Project.all
    @location = Location.all
    @department = Department.all
    @group = Group.all
    @user = User.all
  end

  # GET /requests/1/edit
  def edit
    @project = Project.all
    @location = Location.all
    @department = Department.all
    @group = Group.all
    @user = User.all
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)
    @project = Project.all
    @location = Location.all
    @department = Department.all
    @group = Group.all
    @user = User.all

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to @request, notice: 'Request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end
  
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :description, :start_date, :end_date, :open, :project_id, :location_id, :department_id, :group_id, :user_id)
    end
    
    
  
  
end
