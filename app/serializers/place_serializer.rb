class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :rating

  has_many :addresses

  def editable
    scope == object.user
  end
end
