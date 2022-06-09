module Api
  class CustomersController < ApplicationController
    before_action :set_purchase

    def show
      @customer = @purchase.customer
      if @customer.nil?
        render json: nil and return
      end
    end

    private

    def set_purchase
      @purchase = Purchase.find(params[:purchase_id])
    end
  end
end
