class ArmorMaterial < ApplicationRecord
    belongs_to :armor
    belongs_to :material

    validates :armor_id, presence: true
    validates :material_id, presence: true
    validates :quantity, presence: true
end
