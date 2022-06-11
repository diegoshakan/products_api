module Api
  module V1
    class TypeUsersController < ApplicationController
      include Currentable, Validable
      before_action :authorize_request
      before_action :set_type_user, only: %i[ show update destroy ]

      # GET /type_users
      def index
        @type_users = TypeUser.all

        render json: @type_users
      end

      # GET /type_users/1
      def show
        render json: @type_user
      end

      # POST /type_users
      def create
        @type_user = TypeUser.new(type_user_with_user_params)

        if @type_user.save
          render json: @type_user, status: :created, location: api_v1_type_user_url(@type_user)
        else
          render json: @type_user.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /type_users/1
      def update
        if @type_user.update(type_user_with_user_params)
          render json: @type_user
        else
          render json: @type_user.errors, status: :unprocessable_entity
        end
      end

      # DELETE /type_users/1
      def destroy
        @type_user.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_type_user
          @type_user = TypeUser.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def type_user_params
          params.require(:type_user).permit(:label, :description, :situation)
        end

      def type_user_with_user_params
        type_user_params.merge({ user: current_user })
      end
    end
  end
end

