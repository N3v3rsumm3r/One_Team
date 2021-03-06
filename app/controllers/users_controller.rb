class UsersController < ApplicationController
  skip_before_action :logged_in_user, only: [:new, :create]
  before_action :correct_user, only: [:edit, :update]
  before_action :collection_resources, only: [:edit, :new, :update]


  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    @user.current_skills.build
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    link_back
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        log_in @user
        flash.now[:success] = "Welcome to the One Team Application"
        format.html { redirect_to edit_user_path(@user) }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if params[:add_skill]
      @user = user.find(params[:id])
      @user.attributes = request_params
      @user.current_skills.build
      render 'edit'
    elsif params[:add_goal]
      @user = user.find(params[:id])
      @user.attributes = request_params
      @user.desired_skills.build
      render 'edit'
    else
      respond_to do |format|
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
          flash.now[:notice] = "User was successfully updated."
          format.html { redirect_to @user }
        else
          format.html { render :edit }
        end
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    User.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
  
    def collection_resources
      @locations = Location.all
      @positions = Position.all
      @groups = Group.all
      @departments = Department.all
      @skills = Skill.all
    end
  
    def correct_user
      @user = User.find(params[:id])
      if !current_user?(@user)
        flash[:danger] = "You do not have access to this action."
      end
      redirect_to(users_path) unless current_user?(@user)
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :department_id, :location_id,
      :position_id, :group_id, :manager_id, :years_with_company, :description, :password, :password_confirmation,
      current_skills_attributes:[:id, :skill_id, :_destroy],
      desired_skills_attributes:[:id, :skill_id, :_destroy])
    end
    
    
end