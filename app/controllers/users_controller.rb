﻿class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    #@users = User.all
    @search = User.search(params[:q])
    @users   = @search.result
    #if @user == nil
    #  @user = User.all
    #end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    type=@user.user_type
    @info=[["氏名",@user.name],["生年月日",@user.birthday],["国籍",@user.country],["住所",@user.address],["電話番号",@user.phone],["仕事",@user.job],["職種",@user.job_type],["性別",@user.gender]]
    if type==:student
      @info.push(["学年",@user.students.grade],["学部",@user.students.department])
    end
#      t.integer :research_subject
#      t.integer :research_room
#      t.string :student_number
#      t.string :guarantor_name
#      t.string :guarantor_address
#      t.string :guarantor_phone
#      t.date :entry_date
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
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
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :country, :address, :phone, :job, :job_type, :birthday, :gender)
    end
end
