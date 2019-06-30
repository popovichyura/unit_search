class OrdersController < ApplicationController
before_action :authenticate_user!
def index
  end

  def new
  	@order = Order.new
  end

  def create
    @order = current_user.orders.build(order_params)
	  if @order.save
			redirect_to order_path(current_user.userparam.id)
		else render 'new'
		end
  end

  def show
    @user = Userparam.find(current_user.userparam.id)
  end

  private

  def order_params
  	params.require(:order).permit(:firstname, :lastname, :from, :to, :count, :date, :user_id, :title)
  end

end
