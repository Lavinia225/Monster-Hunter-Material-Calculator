class Armor < ApplicationRecord
    belongs_to :armor_set
    has_many :armor_skills, dependent: :destroy
    has_many :skills, through: :armor_skills
    has_many :armor_materials, dependent: :destroy
    has_many :materials, through: :armor_materials
    has_many :monsters, through: :materials

    validates :name, presence: true
    validates :armor_set_id, presence: true
    validates :slot, {presence: true, inclusion: {in: %w(head chest arms waist leg)}}
    validates :defense, {presence: true, numericality: {in: (1..126)}}
    validates :decor_one, {presence: true, numericality: {in: (0..4)}}
    validates :decor_two, {presence: true, numericality: {in: (0..4)}}
    validates :decor_three, {presence: true, numericality: {in: (0..4)}}
    validates :fire_res, {presence: true, numericality: {in: (-5..4)}}
    validates :water_res, {presence: true, numericality: {in: (-5..4)}}
    validates :thunder_res, {presence: true, numericality: {in: (-5..4)}}
    validates :ice_res, {presence: true, numericality: {in: (-5..4)}}
    validates :dragon_res, {presence: true, numericality: {in: (-5..4)}}
end
