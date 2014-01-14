class AfterGraduationsController < ApplicationController
  before_action :set_after_graduation, only: [:show, :edit, :update, :destroy]
  before_action :check_access

  # GET /after_graduations
  # GET /after_graduations.json
  def index
    @after_graduations = @current_user.graduate.after_graduation.all
  end

  # GET /after_graduations/1
  # GET /after_graduations/1.json
  def show
  end

  # GET /after_graduations/new
  def new
    @after_graduation = AfterGraduation.new
  end

  # GET /after_graduations/1/edit
  def edit
  end

  # POST /after_graduations
  # POST /after_graduations.json
  def create
    @after_graduation = AfterGraduation.new(after_graduation_params)

    respond_to do |format|
      if @after_graduation.save
        format.html { redirect_to @after_graduation, notice: t("after_graduation_successfully_created") }
        format.json { render action: 'show', status: :created, location: @after_graduation }
        @current_user.graduate.after_graduation << @after_graduation
      else
        format.html { render action: 'new' }
        format.json { render json: @after_graduation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /after_graduations/1
  # PATCH/PUT /after_graduations/1.json
  def update
    respond_to do |format|
      if @after_graduation.update(after_graduation_params)
        format.html { redirect_to @after_graduation, notice: t("after_graduation_successfully_updated") }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @after_graduation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /after_graduations/1
  # DELETE /after_graduations/1.json
  def destroy
    @after_graduation.destroy
    respond_to do |format|
      format.html { redirect_to after_graduations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_after_graduation
      @after_graduation = AfterGraduation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def after_graduation_params
      params.require(:after_graduation).permit(:belong, :position, :job_kind, :other)
    end
    
    # 修了生しかアクセスできない
    def check_access
     if @current_user.user_type == :graduate
     else
       redirect_to nopermission_users_path
     end
   end
   
end
