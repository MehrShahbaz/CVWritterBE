# frozen_string_literal: true

module Api
  module V1
    # UsersController
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show update destroy]

      def show
        render json: @user
      end

      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @user.destroy
        render json: { id: @user.id }, status: :ok
      end

      private

      def set_user
        @user = User.find_by(uid: params[:id])
      end

      def user_params
        params.require(:user).permit(:uid, :email, :name, :details)
      end
    end
  end
end
