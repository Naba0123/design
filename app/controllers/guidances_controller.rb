class GuidancesController < ApplicationController
  before_action :set_guidance, only: [:show, :edit, :update, :destroy]

  # GET /guidances
  # GET /guidances.json
  def index
    @guidances = Guidance.all
  end

  # GET /guidances/1
  # GET /guidances/1.json
  def show
  end

  # GET /guidances/new
  def new
    @guidance = Guidance.new
  end

  # GET /guidances/1/edit
  def edit
  end

  # POST /guidances
  # POST /guidances.json
  def create
    @guidance = Guidance.new(guidance_params)

    respond_to do |format|
      if @guidance.save
        format.html { redirect_to @guidance, notice: 'Guidance was successfully created.' }
        format.json { render action: 'show', status: :created, location: @guidance }
      else
        format.html { render action: 'new' }
        format.json { render json: @guidance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guidances/1
  # PATCH/PUT /guidances/1.json
  def update
    respond_to do |format|
      if @guidance.update(guidance_params)
        format.html { redirect_to @guidance, notice: 'Guidance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guidance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guidances/1
  # DELETE /guidances/1.json
  def destroy
    @guidance.destroy
    respond_to do |format|
      format.html { redirect_to guidances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guidance
      @guidance = Guidance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guidance_params
      params.require(:guidance).permit(:guidance_date, :guidance_place, :guidance_kind_id)
    end
end
