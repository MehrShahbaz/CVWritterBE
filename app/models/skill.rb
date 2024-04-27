# frozen_string_literal: true

# == Schema Information
#
# Table name: skills
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Skill
class Skill < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :job_skills, dependent: :destroy
  has_many :jobs, through: :job_skills
end
