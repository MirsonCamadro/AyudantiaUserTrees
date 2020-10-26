class TreeweathersController < ApplicationController
  before_action :set_treeweather, only: [:show, :edit, :update, :destroy]

  # GET /treeweathers
  # GET /treeweathers.json
  def index
    @treeweathers = Treeweather.all
  end

  # GET /treeweathers/1
  # GET /treeweathers/1.json
  def show
  end

  # GET /treeweathers/new
  def new
    @treeweather = Treeweather.new
  end

  # GET /treeweathers/1/edit
  def edit
  end

  # POST /treeweathers
  # POST /treeweathers.json
  def create
    @treeweather = Treeweather.new(treeweather_params)

    respond_to do |format|
      if @treeweather.save
        format.html { redirect_to @treeweather, notice: 'Treeweather was successfully created.' }
        format.json { render :show, status: :created, location: @treeweather }
      else
        format.html { render :new }
        format.json { render json: @treeweather.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /treeweathers/1
  # PATCH/PUT /treeweathers/1.json
  def update
    respond_to do |format|
      if @treeweather.update(treeweather_params)
        format.html { redirect_to @treeweather, notice: 'Treeweather was successfully updated.' }
        format.json { render :show, status: :ok, location: @treeweather }
      else
        format.html { render :edit }
        format.json { render json: @treeweather.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /treeweathers/1
  # DELETE /treeweathers/1.json
  def destroy
    @treeweather.destroy
    respond_to do |format|
      format.html { redirect_to treeweathers_url, notice: 'Treeweather was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_treeweather
      @treeweather = Treeweather.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def treeweather_params
      params.require(:treeweather).permit(:tree_id, :weather_id)
    end
end
