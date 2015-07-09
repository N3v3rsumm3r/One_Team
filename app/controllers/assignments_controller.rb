class AssignmentsController < ApplicationController
  skip_before_action :admin_user


  # POST /responses
  # POST /responses.json
  def create
    link_back
    @assignment = Assignment.new(user_id: params[:user_id], request_id: params[:request_id])

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to session.delete(:return_to), notice: 'User was assigned to request.' }
      else
        format.html { redirect_to session.delete(:return_to), notice: 'User was not assigned to request.' }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    link_back
    Assignment.destroy(params[:assignment_id])
    respond_to do |format|
      format.html { redirect_to session.delete(:return_to), notice: 'User was unassigned from request.' }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:assignment).permit(:user_id, :request_id)
    end
end
