class NaturalMaterial < ApplicationRecord
    belongs_to :natural_source
    belongs_to :material

    validates :material_id, presence: true
    validates :natural_source_id, presence: true

end
