class ArmorSerializer < ActiveModel::Serializer
  attributes :id, :name, :slot, :defense, :decor_one, :decor_two, :decor_three, :fire_res, :water_res, :thunder_res, :ice_res, :dragon_res
  has_many :skills
  has_many :materials
end
