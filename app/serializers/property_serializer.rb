class PropertySerializer < ActiveModel::Serializer
	attributes :id, :price, :name, :detail, :type, :created_at, :images

	def images
		object.images.map do |image|
			image.content.as_json
		end
	end
end