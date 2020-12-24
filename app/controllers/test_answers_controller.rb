class TestAnswersController < ApplicationController
   before_action :require_login
   before_action :set_test_answer, only: [:show, :edit, :update, :destroy]

  # GET /test_answers
  # GET /test_answers.json
  def index
    @test_answers = TestAnswer.all
  end

  # GET /test_answers/1
  # GET /test_answers/1.json
  def show
     @test_question = @test_answer.test_question
     @test_options = @test_question.test_options
  end

  # GET /test_answers/new
  def new
    @test_answer = TestAnswer.new
  end

  # GET /test_answers/1/edit
  def edit
     @test_question = @test_answer.test_question
     @test_options = @test_question.test_options
  end

  # POST /test_answers
  # POST /test_answers.json
  def create
    @test_answer = TestAnswer.new(test_answer_params)

    respond_to do |format|
      if @test_answer.save
        format.html { redirect_to @test_answer, notice: 'Test answer was successfully created.' }
        format.json { render :show, status: :created, location: @test_answer }
      else
        format.html { render :new }
        format.json { render json: @test_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_answers/1
  # PATCH/PUT /test_answers/1.json
  def update

     @test_question = @test_answer.test_question
     @test_options = @test_question.test_options

    respond_to do |format|
      if @test_answer.update(test_answer_params)
        format.html { redirect_to @test_answer, notice: 'Test answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_answer }
      else
        format.html { render :edit }
        format.json { render json: @test_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_answers/1
  # DELETE /test_answers/1.json
  def destroy
    @test_answer.destroy
    respond_to do |format|
      format.html { redirect_to test_answers_url, notice: 'Test answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_answer
      @test_answer = TestAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_answer_params
      params.permit(:test_question_id, :test_id, :letter, :answer, :correct)
    end
end
