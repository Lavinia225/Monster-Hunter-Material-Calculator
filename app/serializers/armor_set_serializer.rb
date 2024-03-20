class ArmorSetSerializer < ActiveModel::Serializer
  attributes :id, :name, :rarity
  has_many :armors
end
