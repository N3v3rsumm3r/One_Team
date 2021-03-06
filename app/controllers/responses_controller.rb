class ResponsesController < ApplicationController
  skip_before_action :admin_user
  before_action :set_response, only: [:show, :edit, :update, :destroy]
  #before_action :owner_admin, [:edit, :update, :destroy]
  before_action :collection_resources, only: [:show, :edit, :update, :new]

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @request = Request.find_by_id(params[:request_id])
    @response = @request.responses.build
    link_back
  end

  # GET /responses/1/edit
  def edit
    @request = Request.find_by_id(params[:request_id])
    @response = @request.responses.find(params[:id])
    link_back
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = current_user.responses.build(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to session.delete(:return_to), notice: 'Response was successfully created.' }
      else
        format.html { redirect_to requests_path, notice: 'Response was not saved.' }
      end
    end
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    @request = Request.find_by_id(params[:request_id])
    @response = @request.responses.find(params[:id])
    respond_to do |format|
      if @response.update_attributes(response_params)
        format.html { redirect_to session.delete(:return_to), notice: 'Response was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    link_back
    @response.destroy
    respond_to do |format|
      format.html { redirect_to session.delete(:return_to), notice: 'Response was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end
    
    def collection_resources
      @users = User.all
    end
  



    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response).permit(:user_id, :request_id, :comment)
    end
end
