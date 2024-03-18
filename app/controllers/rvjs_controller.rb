class RvjsController < ApplicationController
  before_action :set_rvj, only: %i[ show edit update destroy ]

  # GET /rvjs or /rvjs.json
  def index
    @rvjs = Rvj.all
  end

  # GET /rvjs/1 or /rvjs/1.json
  def show
  end

  # GET /rvjs/new
  def new
    @rvj = Rvj.new
  end

  # GET /rvjs/1/edit
  def edit
  end

  # POST /rvjs or /rvjs.json
  def create
    @rvj = Rvj.new(rvj_params)

    respond_to do |format|
      if @rvj.save
        format.html { redirect_to rvj_url(@rvj), notice: "Rvj was successfully created." }
        format.json { render :show, status: :created, location: @rvj }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rvj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rvjs/1 or /rvjs/1.json
  def update
    respond_to do |format|
      if @rvj.update(rvj_params)
        format.html { redirect_to rvj_url(@rvj), notice: "Rvj was successfully updated." }
        format.json { render :show, status: :ok, location: @rvj }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rvj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rvjs/1 or /rvjs/1.json
  def destroy
    @rvj.destroy

    respond_to do |format|
      format.html { redirect_to rvjs_url, notice: "Rvj was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rvj
      @rvj = Rvj.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rvj_params
      params.require(:rvj).permit(:title, :block)
    end
end
