class Houses::ListSerializer < ActiveModel::Serializer
#	include GenericListSerializer

  	attributes :id, :price, :name, :detail, :thumb
  
end
