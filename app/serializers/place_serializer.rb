class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating

  # has_many :addresses
  belongs_to :user

  def editable
    scope == object.user
  end
end
