class Skill < ApplicationRecord
    has_many :armor_skills, dependent: :destroy
    has_many :armors, through: :armor_skills
    has_many :sets, through: :armors
    has_many :armor_sets, through: :armors
end
