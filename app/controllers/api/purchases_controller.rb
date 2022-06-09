module Api
  class PurchasesController < ApplicationController
    before_action :set_shop

    def index
      @purchases = @shop.purchases
      @purchases = @purchases.where(status: params[:status]) if params[:status].present?
    end

    def show
      @purchase = @shop.purchases.find(params[:id])
    end

    def create
      @purchase = @shop.purchases.build(purchase_params)
    end

    private

    def set_shop
      @shop = Shop.first
    end

    def purchase_params
      params.require(:amount_cents, :amount_currency, :card_type, :status)
    end
  end
end
