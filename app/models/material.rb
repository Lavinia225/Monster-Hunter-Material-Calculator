class Material < ApplicationRecord
    belongs_to :monster
    has_many :armor_materials, dependent: :destroy
    has_many :armors, through: :armor_materials

    validates :name, presence: true
    validates :monster_id, presence: true
end
