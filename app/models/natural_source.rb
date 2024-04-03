class NaturalSource < ApplicationRecord
    has_many :natural_materials, dependent: :destroy
    has_many :materials, through: :natural_materials

    validates :source, presence: :true
    validates :rank, {presence: true, inclusion: {in: %w"Low High Master"}}
    validates :locale, presence: true
end
