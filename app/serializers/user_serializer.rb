# frozen_string_literal: true

# UserSerializer
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :uid, :details, :email
end
