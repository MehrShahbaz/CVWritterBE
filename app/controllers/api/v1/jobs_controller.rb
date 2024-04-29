# frozen_string_literal: true

module Api
  module V1
    # jobs Controller
    class JobsController < ApplicationController
      before_action :set_job, only: %i[show update destroy]
      before_action :set_search_jobs, only: %i[index]

      def index
        render json: { jobs: serialized_jobs, count: @count }
      end

      def show
        render json: @job
      end

      def create
        @job = Job.new(job_params)

        if @job.save
          render json: @job, status: :created
        else
          render_errors(@job)
        end
      end

      def update
        if @job.update(job_params)
          render json: @job
        else
          render_errors(@job)
        end
      end

      def destroy
        @job.destroy
        render json: { id: @job.id }, status: :ok
      end

      private

      def set_job
        @job = Job.find(params[:id])
      end

      def set_search_jobs
        @jobs = Job.where('name ILIKE :search', search: "%#{params[:search]}%")
                   .order(:name)
                   .page(params[:page] || 1)
                   .per(params[:per_page] || 5)
                   .distinct
        @count = @jobs.total_count
      end

      def job_params
        params.require(:job).permit(:name, :description, :url,
                                    :user_details,
                                    :organization_id,
                                    skill_ids: [],
                                    skills_attributes: %i[name])
      end

      def serialized_jobs
        ActiveModel::Serializer::CollectionSerializer.new(@jobs, serializer: JobSerializer)
      end

      def render_errors(resource)
        render json: { errors: resource.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end
end
