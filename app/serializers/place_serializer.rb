# frozen_string_literal: true

class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating

  has_many :addresses
  has_one :user

  def editable
    scope == object.user
  end
end
