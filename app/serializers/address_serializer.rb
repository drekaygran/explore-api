# frozen_string_literal: true

class AddressSerializer < ActiveModel::Serializer
  attributes :street_1, :street_2, :city, :state, :zip_code
  belongs_to :place
end
