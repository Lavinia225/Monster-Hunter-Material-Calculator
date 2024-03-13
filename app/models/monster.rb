class Monster < ApplicationRecord
    has_many :materials
    has_many :armor_materials, through: :materials
    has_many :armors, through: :materials
end
