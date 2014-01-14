class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :authorize]
  skip_before_action :check_logined, only: [:new, :create]
  before_action :check_admin, only: [:search, :list, :authorize, :list_unauthorized]
  before_action :check_permission
  skip_before_action :check_permission, only: [:index, :new, :edit, :create, :update, :destroy, :new_graduate]

  def search
    @search = User.search(params[:q])
  end

  def list
    @search = User.search(params[:q])
    @users = @search.result.page(params[:page]).per(10)
    #@users = User.all
  end

  # GET /users
  # GET /users.json
  def index
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @members = @user.guidances
  end

  # GET /users/new
  def new
    if session[:user_id]
      unless @current_user.user_type == :admin
        render 'nopermission'
      end
    end
    @user = User.new
    @new_type = params[:new_type]
    if @new_type == "graduate"
      @user.build_graduate()
      @new_name = "Graduate"
    elsif @new_type == "student"
      if session[:user_id]
        if @current_user.user_type == :admin
          @user.build_student()
          @new_name = "Student"
        else
          render 'nopermission'
        end
      else
        @user.build_participant()
        @new_name = "Participant"
      end
    else
      @user.build_participant()
      @new_name = "Participant"
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
    if session[:user_id]
      @user.authorized = true
    else
      @user.authorized = false
    end
    
    unless @user.graduate.nil?
      @user.graduate.is_entered = false
    end
    
    respond_to do |format|
      if @user.save
        if session[:user_id]
          format.html { redirect_to @user, notice: 'ユーザが作成されました' }
        else
          format.html { redirect_to @user, notice: 'ユーザが作成されました。大学の認証をお待ちください' }
        end
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to @user, notice: 'ユーザが更新されました' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  
  def authorize
    @authorize_type = params[:authorize_type]
  end
  
  def nopermission
  end
  
  def list_unauthorized
    @list_type = params[:list_type]
    if @list_type == "graduate"
      @search = User.joins(:graduate).merge(Graduate.where(:is_entered => false))
      @list_name = "Graduate"
    else
      @search_tmp = User.joins(:participant).merge(Participant.all)
      @search = @search_tmp.where(:authorized => false)
      @list_name = "Participant"
    end
    @users = @search
  end
  
  def new_graduate
    unless @current_user.user_type == :student
      render 'nopermission'
    end
    @user = @current_user
    @user.create_graduate(:is_entered => false)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:account, :password, :password_confirmation, :name, :country,
                                   :address, :phone, :job, :job_kind_id, :birthday, :gender, :authorized,
                                   :participant_attributes => [:wish, :wish_course, :teacher, :entry_date, :is_entered],
                                   :student_attributes => [:grade, :department, :research_subject, :research_room,
                                   :student_number, :guarantor_name, :guarantor_address, :guarantor_phone, :entry_date],
                                   :graduate_attributes => [:is_change, :finish_date, :is_entered])
    end
    
    # 大学以外は自分の情報しか参照できない
    def check_permission
      unless @current_user.user_type == :admin
        unless @user.id == @current_user.id
          render 'nopermission'
        end
      end
    end
    
   # 大学しかアクセスできないページの管理
   def check_admin
     unless @current_user.user_type == :admin
       render 'nopermission'
     end
   end
   
end
