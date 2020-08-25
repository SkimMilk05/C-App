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
    @image_set = @image.image_set
  end

  # GET /image_sessions/new
  def new
    @image_session = ImageSession.new
  end

  # GET /image_sessions/1/edit
  def edit
    @image = @image_session.image
  end

  # POST /image_sessions
  # POST /image_sessions.json
  def create
    @image_session = ImageSession.new(image_session_params)

    respond_to do |format|
      if @image_session.save
        format.html { redirect_to edit_image_session_path(@image_session) }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /image_sessions/1
  # PATCH/PUT /image_sessions/1.json
  def update
    respond_to do |format|
      if @image_session.update(image_session_params)
        if finished?
          format.html { redirect_to @image_session}
        else
          format.html { redirect_to edit_image_session_path(@image_session) }
        end
      else
        format.html { redirect_back f }
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
      params.permit(:greenRight, :blueRight, :blueWrong, :colorlessWrong, :greenLeft, :blueLeft, :image_id, :user_id)
    end

    def finished?
      @image_session.greenLeft == 0 && @image_session.blueLeft == 0
    end
end
