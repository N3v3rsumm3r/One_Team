class NeededSkillsController < ApplicationController
  before_action :set_needed_skill, only: [:show, :edit, :update, :destroy]

  # GET /needed_skills
  # GET /needed_skills.json
  def index
    @needed_skills = NeededSkill.all
  end

  # GET /needed_skills/1
  # GET /needed_skills/1.json
  def show
  end

  # GET /needed_skills/new
  def new
    @needed_skill = NeededSkill.new
  end

  # GET /needed_skills/1/edit
  def edit
  end

  # POST /needed_skills
  # POST /needed_skills.json
  def create
    @needed_skill = NeededSkill.new(needed_skill_params)

    respond_to do |format|
      if @needed_skill.save
        format.html { redirect_to @needed_skill, notice: 'Needed skill was successfully created.' }
        format.json { render :show, status: :created, location: @needed_skill }
      else
        format.html { render :new }
        format.json { render json: @needed_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /needed_skills/1
  # PATCH/PUT /needed_skills/1.json
  def update
    respond_to do |format|
      if @needed_skill.update(needed_skill_params)
        format.html { redirect_to @needed_skill, notice: 'Needed skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @needed_skill }
      else
        format.html { render :edit }
        format.json { render json: @needed_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /needed_skills/1
  # DELETE /needed_skills/1.json
  def destroy
    @needed_skill.destroy
    respond_to do |format|
      format.html { redirect_to needed_skills_url, notice: 'Needed skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_needed_skill
      @needed_skill = NeededSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def needed_skill_params
      params.require(:needed_skill).permit(:skill_id)
    end
end
