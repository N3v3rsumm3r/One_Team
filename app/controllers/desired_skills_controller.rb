class DesiredSkillsController < ApplicationController
  before_action :set_desired_skill, only: [:show, :edit, :update, :destroy]

  # GET /desired_skills
  # GET /desired_skills.json
  def index
    @desired_skills = DesiredSkill.all
  end

  # GET /desired_skills/1
  # GET /desired_skills/1.json
  def show
  end

  # GET /desired_skills/new
  def new
    @desired_skill = DesiredSkill.new
  end

  # GET /desired_skills/1/edit
  def edit
  end

  # POST /desired_skills
  # POST /desired_skills.json
  def create
    @desired_skill = DesiredSkill.new(desired_skill_params)

    respond_to do |format|
      if @desired_skill.save
        format.html { redirect_to @desired_skill, notice: 'Desired skill was successfully created.' }
        format.json { render :show, status: :created, location: @desired_skill }
      else
        format.html { render :new }
        format.json { render json: @desired_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desired_skills/1
  # PATCH/PUT /desired_skills/1.json
  def update
    respond_to do |format|
      if @desired_skill.update(desired_skill_params)
        format.html { redirect_to @desired_skill, notice: 'Desired skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @desired_skill }
      else
        format.html { render :edit }
        format.json { render json: @desired_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desired_skills/1
  # DELETE /desired_skills/1.json
  def destroy
    @desired_skill.destroy
    respond_to do |format|
      format.html { redirect_to desired_skills_url, notice: 'Desired skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desired_skill
      @desired_skill = DesiredSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desired_skill_params
      params.require(:desired_skill).permit(:user_id, :skill_id)
    end
end
