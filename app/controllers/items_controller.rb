class ItemsController < ApplicationController
  respond_to :html, :json

  def index
    @items = Item.page params[:page]
  end

  def show
    @item = Item.find(params[:id])
  end
end
