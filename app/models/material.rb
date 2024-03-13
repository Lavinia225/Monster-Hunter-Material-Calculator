class Material < ApplicationRecord
    belongs_to :monster
    has_many :armor_materials, dependent: :destroy
    has_many :armors, through: :armor_materials
end
