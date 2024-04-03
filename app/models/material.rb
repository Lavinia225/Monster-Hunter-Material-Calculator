class Material < ApplicationRecord
    has_many :monster_materials, dependent: :destroy
    has_many :monsters, through: :monster_materials
    has_many :natural_materials, dependent: :destroy
    has_many :natural_sources, through: :natural_materials
    has_many :armor_materials, dependent: :destroy
    has_many :armors, through: :armor_materials

    validates :name, presence: true
    validates :rank, {presence: true, inclusion: {in: %w"Low High Master"}}
end
