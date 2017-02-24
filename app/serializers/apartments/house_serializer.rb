class HouseSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :detail
end
