module Api
  class ShopsController < ApplicationController
    def show
      @shop = Shop.first
    end
  end
end
