# frozen_string_literal: true

# JobSerializer
class JobSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :url, :user_details, :created_at

  has_many :skills, serializer: SkillSerializer

  def created_at
    object.created_at.to_i
  end
end
