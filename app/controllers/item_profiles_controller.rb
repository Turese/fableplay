class ItemProfilesController < ApplicationController
  def index
    @items = ItemProfile.all
  end

  
end
