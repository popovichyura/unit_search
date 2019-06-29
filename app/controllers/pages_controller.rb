class PagesController < ApplicationController
  def index
  	@users = User.all
  	@units = Unit.all
  end
end
