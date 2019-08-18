class ItemProfilesController < ApplicationController
  def index
    @items = ItemProfile.where(:kind == 1)
  end
end
