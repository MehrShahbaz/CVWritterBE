# frozen_string_literal: true

# == Schema Information
#
# Table name: organizations
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  url        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Organization
class Organization < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :products, dependent: :destroy
end
