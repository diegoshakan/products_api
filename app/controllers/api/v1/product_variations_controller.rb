module Api
  module V1
    class ProductVariationsController < ApplicationController
      before_action :set_product_variation, only: %i[ show update destroy ]

      # GET /product_variations
      def index
        @product_variations = ProductVariation.all

        render json: @product_variations
      end

      # GET /product_variations/1
      def show
        render json: @product_variation
      end

      # POST /product_variations
      def create
        @product_variation = ProductVariation.new(product_variation_params)

        if @product_variation.save
          render json: @product_variation, status: :created, location: api_v1_product_variation_url(@product_variation)
        else
          render json: @product_variation.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /product_variations/1
      def update
        if @product_variation.update(product_variation_params)
          render json: @product_variation
        else
          render json: @product_variation.errors, status: :unprocessable_entity
        end
      end

      # DELETE /product_variations/1
      def destroy
        @product_variation.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_product_variation
          @product_variation = ProductVariation.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def product_variation_params
          params.require(:product_variation).permit(:situation, :product_id, :color_id, :size_id)
        end
    end
  end
end

