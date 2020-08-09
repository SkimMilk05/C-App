class BlueAreasController < ApplicationController
  before_action :set_blue_area, only: [:show, :edit, :update, :destroy]

  # GET /blue_areas
  # GET /blue_areas.json
  def index
    @blue_areas = BlueArea.all
  end

  # GET /blue_areas/1
  # GET /blue_areas/1.json
  def show
  end

  # GET /blue_areas/new
  def new
    @blue_area = BlueArea.new
  end

  # GET /blue_areas/1/edit
  def edit
  end

  # POST /blue_areas
  # POST /blue_areas.json
  def create
    @blue_area = BlueArea.new(blue_area_params)

    respond_to do |format|
      if @blue_area.save
        format.html { redirect_to @blue_area, notice: 'Blue area was successfully created.' }
        format.json { render :show, status: :created, location: @blue_area }
      else
        format.html { render :new }
        format.json { render json: @blue_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blue_areas/1
  # PATCH/PUT /blue_areas/1.json
  def update
    respond_to do |format|
      if @blue_area.update(blue_area_params)
        format.html { redirect_to @blue_area, notice: 'Blue area was successfully updated.' }
        format.json { render :show, status: :ok, location: @blue_area }
      else
        format.html { render :edit }
        format.json { render json: @blue_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blue_areas/1
  # DELETE /blue_areas/1.json
  def destroy
    @blue_area.destroy
    respond_to do |format|
      format.html { redirect_to blue_areas_url, notice: 'Blue area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blue_area
      @blue_area = BlueArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blue_area_params
      params.fetch(:blue_area, {})
    end
end
