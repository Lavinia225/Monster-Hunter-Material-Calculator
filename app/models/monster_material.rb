class MonsterMaterial < ApplicationRecord
    belongs_to :monster
    belongs_to :material

    validates :monster_id, presence: true
    validates :material_id, presence: true
end
