class GreenAreasController < ApplicationController
  before_action :set_green_area, only: [:show, :edit, :update, :destroy]

  # GET /green_areas
  # GET /green_areas.json
  def index
    @green_areas = GreenArea.all
  end

  # GET /green_areas/1
  # GET /green_areas/1.json
  def show
  end

  # GET /green_areas/new
  def new
    @green_area = GreenArea.new
  end

  # GET /green_areas/1/edit
  def edit
  end

  # POST /green_areas
  # POST /green_areas.json
  def create
    @green_area = GreenArea.new(green_area_params)

    respond_to do |format|
      if @green_area.save
        format.html { redirect_to @green_area, notice: 'Green area was successfully created.' }
        format.json { render :show, status: :created, location: @green_area }
      else
        format.html { render :new }
        format.json { render json: @green_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /green_areas/1
  # PATCH/PUT /green_areas/1.json
  def update
    respond_to do |format|
      if @green_area.update(green_area_params)
        format.html { redirect_to @green_area, notice: 'Green area was successfully updated.' }
        format.json { render :show, status: :ok, location: @green_area }
      else
        format.html { render :edit }
        format.json { render json: @green_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /green_areas/1
  # DELETE /green_areas/1.json
  def destroy
    @green_area.destroy
    respond_to do |format|
      format.html { redirect_to green_areas_url, notice: 'Green area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_green_area
      @green_area = GreenArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def green_area_params
      params.fetch(:green_area, {})
    end
end
