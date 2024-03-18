class ArmorSet < ApplicationRecord
    has_many :armors
    has_many :armor_materials, through: :armors
    has_many :armor_skills, through: :armors
    has_many :skills, through: :armor_skills
    has_many :materials, through: :armor_materials
    has_many :monsters, through: :materials

    validates :name, presence: true
end
