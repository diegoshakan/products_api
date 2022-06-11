module Api
  module V1
    class ProductsController < ApplicationController
      before_action :authorize_request
      before_action :set_product, only: %i[ show update destroy ]

      # GET /products
      def index
        @products = Product.all

        render json: @products
      end

      # GET /products/1
      def show
        render json: @product
      end

      # POST /products
      def create
        @product = Product.new(product_params)

        if owner_user_id?
          if @product.save
            render json: @product, status: :created, location: api_v1_product_url(@product)
          end
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /products/1
      def update
        if @product.update(product_params)
          render json: @product
        else
          render json: @product.errors, status: :unprocessable_entity
        end
      end

      # DELETE /products/1
      def destroy
        @product.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = Product.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def product_params
        params.require(:product).permit(:name, :description, :quantity, :price, :category_id, :user_id)
      end
    end
  end
end
