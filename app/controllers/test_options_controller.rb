class TestOptionsController < ApplicationController
  before_action :set_test_option, only: [:show, :edit, :update, :destroy]

  # GET /test_options
  # GET /test_options.json
  def index
    @test_options = TestOption.all
  end

  # GET /test_options/1
  # GET /test_options/1.json
  def show
  end

  # GET /test_options/new
  def new
    @test_option = TestOption.new
  end

  # GET /test_options/1/edit
  def edit
  end

  # POST /test_options
  # POST /test_options.json
  def create
    @test_option = TestOption.new(test_option_params)

    respond_to do |format|
      if @test_option.save
        format.html { redirect_to @test_option, notice: 'Test option was successfully created.' }
        format.json { render :show, status: :created, location: @test_option }
      else
        format.html { render :new }
        format.json { render json: @test_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_options/1
  # PATCH/PUT /test_options/1.json
  def update
    respond_to do |format|
      if @test_option.update(test_option_params)
        format.html { redirect_to @test_option, notice: 'Test option was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_option }
      else
        format.html { render :edit }
        format.json { render json: @test_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_options/1
  # DELETE /test_options/1.json
  def destroy
    @test_option.destroy
    respond_to do |format|
      format.html { redirect_to test_options_url, notice: 'Test option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_option
      @test_option = TestOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_option_params
      params.fetch(:test_option, {})
    end
end
