class UnitsController < ApplicationController


    before_action :authenticate_user!, exist:[:show]
    before_action :set_unit, only:[:show, :edit, :update, :destroy]
  def index
  end

  def new
    @unit = Unit.new
  end

  def create
    if current_user.role == "Editor"
     params[:unit][:category_id]=params[:category_id]
     @unit = current_user.units.build(unit_params)
    if @unit.save
      redirect_to root_path
    else render 'new'
    end
    end
  end


  def show
  end

  def category
    pp @units=Unit.where(category_id: params[:id])
  end



  private

  def unit_params
    params.require(:unit).permit(:title, :shortbody, :body, :price, :category_id, :user_id, :count)
  end

  def set_unit
    @unit=Unit.find(params[:id])
  end




end
