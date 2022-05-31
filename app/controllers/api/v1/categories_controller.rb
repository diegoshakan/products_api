module Api
  module V1
    class CategoriesController < ApplicationController
      before_action :set_category, only: %i[ show update destroy ]

      # GET /categories
      def index
        @categories = Category.all

        render json: @categories
      end

      # GET /categories/1
      def show
        render json: @category
      end

      # POST /categories
      def create
        @category = Category.new(category_with_user_params)

        if @category.save
          render json: @category, status: :created, location: api_v1_category_url(@category)
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /categories/1
      def update
        if @category.update(category_with_user_params)
          render json: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # DELETE /categories/1
      def destroy
        @category.destroy
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def category_params
        params.require(:category).permit(:name)
      end

      def category_with_user_params
        category_params.merge({ user_id: params[:user_id] })
      end
    end
  end
end
