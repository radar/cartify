module Api
  class RefundsController < ApplicationController
    before_action :set_shop

    def index
      @refunds = @shop.refunds
      @refunds = @refunds.where(status: params[:status]) if params[:status].present?
    end

    def show
      @purchase = @shop.refunds.find(params[:id])
    end

    def create
      @purchase = @shop.refunds.build(refund_params)
    end

    private

    def set_shop
      @shop = Shop.first
    end

    def refund_params
      params.require(:amount_cents, :amount_currency, :status)
    end
  end
end
