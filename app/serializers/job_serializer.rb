# frozen_string_literal: true

# JobSerializer
class JobSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :user_details

  has_many :skills, serializer: SkillSerializer
end
