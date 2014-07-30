class AdminsController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to terms_path, notice: "Admin successfully added."
    else
      render action: :new
    end
  end

  def edit
  end

  def update
    if @admin.update(admin_params)
      redirect_to terms_path, notice: "Updated admin information successfully"
    else
      render action: 'edit'
    end
  end

  private
  def set_admin
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end
end
