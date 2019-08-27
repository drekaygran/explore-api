# frozen_string_literal: true

class Place < ApplicationRecord
  belongs_to :user
  has_many :addresses, dependent: :destroy

  def address
    addresses.first
  end
end
