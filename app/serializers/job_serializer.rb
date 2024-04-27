# frozen_string_literal: true

# JobSerializer
class JobSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url

  has_many :skills, serializer: SkillSerializer
end
