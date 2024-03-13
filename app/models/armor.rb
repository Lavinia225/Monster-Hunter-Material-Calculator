class Armor < ApplicationRecord
    belongs_to :armor_set
    has_many :armor_skills
    has_many :skills, through: :armor_skills
    has_many :armor_materials
    has_many :materials, through: :armor_materials
    has_many :monsters, through: :materials
end
