class ImageSessionsController < ApplicationController
  before_action :require_login
  before_action :set_image_session, only: [:show, :edit, :update, :destroy]

  # GET /image_sessions
  # GET /image_sessions.json
  def index
    @image_sessions = ImageSession.all
  end

  # GET /image_sessions/1
  # GET /image_sessions/1.json
  def show
    @image = @image_session.image
  end

  # GET /image_sessions/new
  def new
    @image_session = ImageSession.new
  end

  # GET /image_sessions/1/edit
  def edit
  end

  # POST /image_sessions
  # POST /image_sessions.json
  def create
    @image_session = ImageSession.new(image_session_params)

    respond_to do |format|
      if @image_session.save
        format.html { redirect_back fallback_location: image_sets_path, notice: 'Practice Started' }
        format.json { render :show, status: :created, location: @image_session }
      else
        format.html { render :new }
        format.json { render json: @image_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_sessions/1
  # PATCH/PUT /image_sessions/1.json
  def update
    respond_to do |format|
      if @image_session.update(image_session_params)
        format.html { redirect_to @image_session, notice: 'Area Clicked' }
        format.json { render :show, status: :ok, location: @image_session }
      else
        format.html { render :edit }
        format.json { render json: @image_session.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /image_sessions/1
  # DELETE /image_sessions/1.json
  def destroy
    @image_session.destroy
    respond_to do |format|
      format.html { redirect_to image_sessions_url, notice: 'Image session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_session
      @image_session = ImageSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_session_params
      params.permit(:greenRight, :blueRight, :greenWrong, :blueWrong, :colorlessWrong, :greenLeft, :blueLeft, :image_id, :user_id)
    end
end
