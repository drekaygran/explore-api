# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :places
  # has_many :addresses, through: :places
end
