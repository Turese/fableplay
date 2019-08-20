class ItemsController < ApplicationController
  before_action :set_curr_user, only: [:index]

  def index
    @items = Item.where(username: @curr_user.username)
    @item_infos = []
    @items.each do |item|
    	@item_infos += [ItemProfile.find(item.item_id)]
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_curr_user
      @curr_user = current_user
    end

end
