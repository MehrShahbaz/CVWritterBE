# frozen_string_literal: true

# User
class User < ApplicationRecord
  validates :uid, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :jobs, dependent: :destroy
end
