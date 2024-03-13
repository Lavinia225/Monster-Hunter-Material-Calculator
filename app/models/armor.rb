class Armor < ApplicationRecord
    belongs_to :armor_set
    has_many :armor_skills, dependent: :destroy
    has_many :skills, through: :armor_skills
    has_many :armor_materials, dependent: :destroy
    has_many :materials, through: :armor_materials
    has_many :monsters, through: :materials
end
