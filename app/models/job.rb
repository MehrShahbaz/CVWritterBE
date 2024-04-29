# frozen_string_literal: true

# == Schema Information
#
# Table name: jobs
#
#  id              :bigint           not null, primary key
#  name            :string(255)      not null
#  description     :string           not null
#  url             :string           not null
#  user_details    :string
#  organization_id :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Job
class Job < ApplicationRecord
  belongs_to :organization, optional: true

  has_many :job_skills, dependent: :destroy
  has_many :skills, through: :job_skills

  accepts_nested_attributes_for :skills
end
