class MicrospotsController < ApplicationController
  before_action :set_microspot, only: [:show, :edit, :update, :destroy]

  # GET /microspots
  # GET /microspots.json
  def index
    @microspots = Microspot.all
  end

  # GET /microspots/1
  # GET /microspots/1.json
  def show
  end

  # GET /microspots/new
  def new
    @microspot = Microspot.new
  end

  # GET /microspots/1/edit
  def edit
  end

  # POST /microspots
  # POST /microspots.json
  def create
    @microspot = Microspot.new(microspot_params)

    respond_to do |format|
      if @microspot.save
        format.html { redirect_to @microspot, notice: 'Microspot was successfully created.' }
        format.json { render action: 'show', status: :created, location: @microspot }
      else
        format.html { render action: 'new' }
        format.json { render json: @microspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microspots/1
  # PATCH/PUT /microspots/1.json
  def update
    respond_to do |format|
      if @microspot.update(microspot_params)
        format.html { redirect_to @microspot, notice: 'Microspot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @microspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microspots/1
  # DELETE /microspots/1.json
  def destroy
    @microspot.destroy
    respond_to do |format|
      format.html { redirect_to microspots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microspot
      @microspot = Microspot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microspot_params
      params.require(:microspot).permit(:content, :user_id)
    end
end
