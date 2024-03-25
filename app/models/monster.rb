class Monster < ApplicationRecord
    has_many :monster_materials, dependent: :destroy
    has_many :materials, through: :monster_materials
    has_many :armor_materials, through: :materials
    has_many :armors, through: :materials

    validates :name, presence: true
end
