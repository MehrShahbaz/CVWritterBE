# frozen_string_literal: true

# == Schema Information
#
# Table name: job_skills
#
#  id         :bigint           not null, primary key
#  skill_id   :bigint           not null
#  job_id     :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# JobSkill
class JobSkill < ApplicationRecord
  belongs_to :job
  belongs_to :skill
end
