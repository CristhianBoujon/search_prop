class ApartmentSerializer < ActiveModel::Serializer
  attributes :id, :price, :name, :detail
end
