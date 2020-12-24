class PreSurveysController < ApplicationController
   before_action :require_login
  before_action :set_pre_survey, only: [:show, :edit, :update, :destroy]

  # GET /pre_surveys
  # GET /pre_surveys.json
  def index
    @pre_surveys = PreSurvey.all
  end

  # GET /pre_surveys/1
  # GET /pre_surveys/1.json
  def show
  end

  # GET /pre_surveys/new
  def new
    @pre_survey = PreSurvey.new
  end

  # GET /pre_surveys/1/edit
  def edit
  end

  # POST /pre_surveys
  # POST /pre_surveys.json
  def create
    @pre_survey = PreSurvey.new(pre_survey_params)

    respond_to do |format|
      if @pre_survey.save
        format.html { redirect_to @pre_survey, notice: 'Pre survey was successfully created.' }
        format.json { render :show, status: :created, location: @pre_survey }
      else
        format.html { render :new }
        format.json { render json: @pre_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_surveys/1
  # PATCH/PUT /pre_surveys/1.json
  def update
    respond_to do |format|
      if @pre_survey.update(pre_survey_params)
        format.html { redirect_to @pre_survey, notice: 'Pre survey was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_survey }
      else
        format.html { render :edit }
        format.json { render json: @pre_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_surveys/1
  # DELETE /pre_surveys/1.json
  def destroy
    @pre_survey.destroy
    respond_to do |format|
      format.html { redirect_to pre_surveys_url, notice: 'Pre survey was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_survey
      @pre_survey = PreSurvey.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pre_survey_params
      params.fetch(:pre_survey, {})
    end
end