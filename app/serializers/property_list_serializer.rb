class PropertyListSerializer < ActiveModel::Serializer
  	attributes :id, :price, :name, :detail, :thumb, :type, :created_at

	def thumb
	  	if(object.images.count > 0)
	  		object.images.first.content.thumb128x128.url
	  	else
	  		DEFAULT_PROPERTY_IMG_128x128	
	  	end
	end

	def created_at
		object.created_at.to_date
	end
end