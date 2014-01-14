class GuidancesUsersController < ApplicationController
  before_action :set_guidances_user, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  # GET /guidances_users
  # GET /guidances_users.json
  def index
    @guidances_users = GuidancesUser.all
  end

  # GET /guidances_users/1
  # GET /guidances_users/1.json
  def show
  end

  # GET /guidances_users/new
  def new
    @guidances_user = GuidancesUser.new
  end

  # GET /guidances_users/1/edit
  def edit
  end

  # POST /guidances_users
  # POST /guidances_users.json
  def create
    @guidances_user = GuidancesUser.new(guidances_user_params)

    respond_to do |format|
      if @guidances_user.save
        format.html { redirect_to @guidances_user, notice: 'Guidances user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @guidances_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @guidances_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guidances_users/1
  # PATCH/PUT /guidances_users/1.json
  def update
    respond_to do |format|
      if @guidances_user.update(guidances_user_params)
        format.html { redirect_to @guidances_user, notice: 'Guidances user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guidances_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guidances_users/1
  # DELETE /guidances_users/1.json
  def destroy
    @guidances_user.destroy
    respond_to do |format|
      format.html { redirect_to guidances_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guidances_user
      @guidances_user = GuidancesUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guidances_user_params
      params.require(:guidances_user).permit(:user_id, :guidance_id)
    end
    
    # 大学しかアクセスできないページの管理
    def check_admin
      unless @current_user.user_type == :admin
        redirect_to nopermission_users_path
      end
    end
end
