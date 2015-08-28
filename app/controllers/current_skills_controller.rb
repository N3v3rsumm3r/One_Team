class CurrentSkillsController < ApplicationController
  before_action :set_current_skill, only: [:show, :edit, :update, :destroy]

  # GET /current_skills
  # GET /current_skills.json
  def index
    @current_skills = CurrentSkill.all
  end

  # GET /current_skills/1
  # GET /current_skills/1.json
  def show
  end

  # GET /current_skills/new
  def new
    @current_skill = CurrentSkill.new
  end

  # GET /current_skills/1/edit
  def edit
  end

  # POST /current_skills
  # POST /current_skills.json
  def create
    @current_skill = CurrentSkill.new(current_skill_params)

    respond_to do |format|
      if @current_skill.save
        format.html { redirect_to session.delete(:return_to), notice: 'Current skill was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /current_skills/1
  # PATCH/PUT /current_skills/1.json
  def update
    respond_to do |format|
      if @current_skill.update(current_skill_params)
        format.html { redirect_to session.delete(:return_to), notice: 'Current skill was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /current_skills/1
  # DELETE /current_skills/1.json
  def destroy
    @current_skill.destroy
    respond_to do |format|
      format.html { redirect_to session.delete(:return_to), notice: 'Current skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_skill
      @current_skill = CurrentSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_skill_params
      params.require(:current_skill).permit(:user_id, :skill_id)
    end
end
