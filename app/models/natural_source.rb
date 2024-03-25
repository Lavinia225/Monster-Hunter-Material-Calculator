class NaturalSource < ApplicationRecord
    has_many :natural_materials, dependent: :destroy
    has_many :materials, through: :natural_materials

    validates :source, presence: :rue
    validates :rank, {presence: true, inclusion: {in: %w"low high master"}}
end
