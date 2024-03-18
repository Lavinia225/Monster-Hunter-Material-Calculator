class ArmorSkill < ApplicationRecord
    belongs_to :skill
    belongs_to :armor

    validates :armor_id, presence: true    
    validates :skill_id, presence: true
    validates :level, presence: true    
end
