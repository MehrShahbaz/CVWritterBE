# frozen_string_literal: true

module Api
  module V1
    # SkillsController
    class SkillsController < ApplicationController
      before_action :set_skill, only: %i[show update destroy]

      def index
        @jobs = if params[:search]
                  Skill.where('name LIKE ?', "%#{params[:search]}%")
                else
                  Skill.all
                end

        render json: @jobs
      end

      def show
        render json: @skill
      end

      def create
        @skill = Skill.new(skill_params)

        if @skill.save
          render json: @skill, status: :created
        else
          render json: @skill.errors, status: :unprocessable_entity
        end
      end

      def update
        if @skill.update(skill_params)
          render json: @skill
        else
          render json: @skill.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @skill.destroy
        render json: { id: @skill.id }, status: :ok
      end

      private

      def set_skill
        @skill = Skill.find(params[:id])
      end

      def skill_params
        params.require(:skill).permit(:name)
      end
    end
  end
end
